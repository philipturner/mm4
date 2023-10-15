//
//  MM4ForceField.swift
//
//
//  Created by Philip Turner on 9/10/23.
//

/// The MM2 force field used to create _Nanosystems (1992)_, but updated with
/// modern ab initio calculations.
///
/// The simulator supports the atoms enumerated by <doc:MM4AtomCode>, with some
/// restrictions on permitted bond types. For example, only C and Si may bond to
/// hydrogen. The remaining elements (except silicon) must have all covalent
/// bonds shared with a carbon atom. In addition, no dissimilar non-C/H atoms
/// may be separated by a bond once removed. Within these restrictions, there
/// exists a large variety of permissible structures, more than with exclusively
/// carbon and hydrogen.
///
/// All major platforms (Mac, Linux, Windows) and all major GPU architectures
/// (Apple, AMD, Intel, Nvidia) are supported. This includes multi-GPU systems
/// with up to around a dozen GPUs (e.g. a single supercomputer node). This is
/// because it delegates all of the computation to OpenMM, an existing,
/// well-tested framework for easily porting molecular simulation algorithms to
/// multiple vendors. OpenMM avoids any O(n^3) algorithms and provides the
/// flexibility to opt out of O(n^2) algorithms. For example, the
/// [minimizer](<doc:MM4ForceField/minimize(tolerance:maxIterations:)>) uses
/// limited-memory BFGS as a faster alternative to conjugate gradient
/// minimization.
///
/// > Note: Throughout the entire software stack, from setup to minimization to
///   simulation, this simulator is O(n). Linear scaling exists at every system
///   size and material composition. This is a rarity among simulation
///   algorithms, most of which are inherently O(n^2) or
///   [employ sparse O(n^2) matrix factorizations](https://xtb-docs.readthedocs.io/en/latest/gfnff.html).
///   MM4 is one of the few simulation techniques that can simulate
///   supermassive million-atom nanosystems on affordable hardware. There are
///   hypotheses about O(n) game physics-like simulators employing static
///   analysis, which can significantly reduce the constant factor to linear
///   scaling. However, there are not yet any verified implementations that
///   project the inherently digital nanoscale onto a macroscale continuous
///   (analog) representation.
///
/// This is an NVE simulator, using 32-bit single precision and a massive
/// timestep. Energy is not conserved to the precision of kT. It fluctuates
/// wildly, but shouldn't systematically drift upward or downward (unless the
/// timestep exceeds C-H stretching resonance frequency). The default
/// timestep (4 fs) is so massive that integration error dwarfs numerical
/// error. Even if the forcefield used 64-bit double or mixed precision, that
/// would not improve its ability to conserve energy.
///
/// > Note: Accuracy (whether an archer hits the right target) is orthogonal
///   to precision (whether the arrows hit the same place every time).
///   Conservation of energy only affects the number of significant figures of
///   measured energy (precision). It does not make system dynamics more
///   accurate, except in the case where energy systematically drifts upward
///   (explodes).
///
/// The integrator uses a multiple time-stepping (MTS) scheme. Cheaper bonded
/// forces, such as bond-stretch and bond-bend, are only stable at ~2 fs
/// without constraints. Expensive forces like torsions, nonbonded, and
/// electrostatic can execute at double the timestep. The value you enter for
/// [`maximumTimeStep`](<doc:MM4ForceField/simulate(time:maximumTimeStep:)>)
/// specifies the execution rate of expensive forces. Always
/// assume the C-H stretching forces execute at half the specified timestep.
/// For example, in the note below, bond stretching forces don't actually
/// execute at the quoted '2 fs'.
///
/// > Note: To maximize the simulation speed, hydrogen mass repartitioning (HMR)
///   is enabled by default. This method makes hydrogens heaver and makes
///   non-hydrogen atoms lighter, to decrease the C-H or Si-H stretching
///   frequency. You can, and should, disable HMR for energy-conserving
///   simulations where timestep falls below 2 fs. This can be done by setting
/// <doc:MM4ParametersDescriptor/hydrogenMassRepartitioning> to `0`.
///   Note that changing the repartitioning will shift the center of mass,
///   which is where bulk angular momentum is applied.
///
/// Single precision is an implementation choice to make the simulator more
/// compatible with different GPU architectures. Most vendors have no or few
/// FP64 units (unlike CPU, where FP64 is widely supported). Mixed precision
/// can sometimes run the bulk of computations in FP32, with only the energy
/// computations in FP64. However, even mixed precision has implementation
/// issues, being difficult to run on GPUs with zero FP64 units.
///
/// The best method to maximize energy conservation is a timestep of 1 fs.
/// This requires 4x as much computation for the same trajectory length,
/// compared to the default (4 fs). It executes expensive forces at 1 fs and
/// cheap forces at 0.5 fs. Integration error scales O(h^2), so this should be
/// around 16x more precise. Any smaller timestep, and rounding error from
/// FP32 will overtake integration error.
public class MM4ForceField {
  var system: MM4System
  
  var contexts: [MM4IntegratorDescriptor: MM4Context] = [:]
  
  /// Create a simulator using the specified configuration.
  public init(descriptor: MM4ForceFieldDescriptor) {
    MM4Plugins.global.load()
    
    guard let parameters = descriptor.parameters else {
      fatalError("No parameters were specified for the force field.")
    }
    system = MM4System(parameters: parameters)
  }
}

// Deviating from the usual convention, and declaring the descriptor after the
// object it creates. This is to emphasize the long documentation comment above.

/// A configuration for a force field simulator.
public class MM4ForceFieldDescriptor {
  /// Optional. The constant force (in piconewtons) exerted on each atom.
  public var externalForces: [SIMD3<Float>]?
  
  /// Required. The set of parameters defining the forcefield.
  public var parameters: MM4Parameters?
  
  /// Required. The position (in nanometers) of each atom's nucleus.
  public var positions: [SIMD3<Float>]?
  
  /// Optional. Atom indices for each rigid body.
  ///
  /// Rigid bodies should have atoms laid out contiguously in memory, in Morton
  /// order. This format ensures spatial locality, which increases performance
  /// of nonbonded forces. Therefore, rigid bodies must be entered as contiguous
  /// ranges of the atom list.
  ///
  /// The set of rigid bodies must cover every atom in the system. No two ranges
  /// may overlap the same atom. If the array of rigid bodies is empty, it
  /// defaults to a range encompassing the entire system. This ensures the
  /// closed system's net momentum stays conserved.
  public var rigidBodies: [Range<Int>]?
  
  /// Optional. Whether each atom's absolute position should never change.
  ///
  /// This is implemented by setting the particle's mass and velocity to zero.
  ///
  /// > Warning: Stationary atoms may cause energy measurements to be
  /// nonsensical. This needs to be investigated further.
  public var stationaryAtoms: [Bool]?
  
  /// Optional. The velocity (in nanometers per picosecond) of each atom at the
  /// start of the simulation.
  ///
  /// These are added to thermal velocities in a way that conserves each rigid
  /// body's overall momentum.
  public var velocities: [SIMD3<Float>]?
  
  // Idea: Set of modes for the force field
  // - "Default" - best tradeoff between accuracy and performance.
  // - "Reduced accuracy" - cheaper alternative forcefield that omits torsions
  //   in bulk H/C/Si. Not yet measured whether it's sufficient for replacing
  //   "default", what the artifacts are, how much it speeds up execution.
  //   - Measure and rank the stiffness of each force, and their contributions
  //     to a set of specific quantitative properties. No matter how cheap a
  //     force is, there should be a maximally cheap option for situations where
  //     simulation speed vastly outweighs accuracy.
  
  public init() {
    
  }
}


