//
//  MM4ForceField+Energy.swift
//  MM4
//
//  Created by Philip Turner on 12/22/23.
//

import OpenMM

/// A data structure wrapping a system's energy.
///
/// > NOTE: This documentation page is still a draft. It may be inconsistent or
///   difficult to understand.
///
/// We always report energy, time, and unit conversion constants in double
/// precision. Potential energy can sometimes have a massive absolute value
/// that dwarfs the magnitude of relative values.
/// Everything else, including rigid body bulk properties susceptible to the
/// same degree of rounding error, are reported in single precision. Force
/// field parameters and similar quantities (heat capacity) are in single
/// precision because we don't know their value with a lot of certainty.
///
/// However, some internal summation algorithms temporarily employ mixed
/// precision. Both the CPU code for `MM4RigidBody` and GPU code for the OpenMM
/// Metal plugin use block summation. The majority of the compute cost happens
/// on FP32, either to improve execution speed and reduce register pressure
/// (CPU) or provide compatibility with a specific hardware vendor (GPU). The
/// rounding error is capped to whatever error occurs within a block
/// (~1000 elements). Outside of the block, the number is casted to
/// FP64 and summed with no additional rounding error. This prevents unexpected
/// issues popping up with large systems that exceed 1000 elements. The mantissa
/// of the quantity is still ~32 bits; we just prevent it from degrading to
/// something like ~16 bits.
///
/// Energy explosion detection is a necessary feature. It is an issue that
/// arises with long simulation runs with high-velocity components (e.g.
/// something leaving machine phase and colliding with a flywheel). It ought to
/// be an error that is always thrown. However, it cannot be enabled by default
/// due to the performance overhead.
public struct MM4ForceFieldEnergy {
  var forceField: MM4ForceField
  
  var _explosionThreshold: Double
  
  /// Whether to throw an error during an energy explosion.
  ///
  /// > Warning: Enabling this feature may significantly degrade performance.
  ///
  /// The default is `false`.
  public var tracked: Bool = false
  
  init(forceField: MM4ForceField) {
    let atoms = forceField.system.parameters.atoms
    self.forceField = forceField
    self._explosionThreshold = 1e6 * (Double(atoms.count) / 1e4)
  }
  
  /// The threshold at which energy is considered to have exploded.
  ///
  /// The default is 1 million zJ per 10,000 atoms.
  public var explosionThreshold: Double {
    get { _explosionThreshold }
    set {
      guard newValue > 0 else {
        fatalError("Explosion threshold must be positive and nonzero.")
      }
      _explosionThreshold = newValue
    }
  }
  
  /// The system's total kinetic energy, in zeptojoules.
  public var kinetic: Double {
    forceField.ensureForcesAndEnergyCached()
    return forceField.cachedState.kineticEnergy!
  }
  
  /// The system's total potential energy, in zeptojoules.
  public var potential: Double {
    forceField.ensureForcesAndEnergyCached()
    return forceField.cachedState.potentialEnergy!
  }
}

extension MM4ForceField {
  /// The system's energy.
  ///
  /// To make the default behavior have high performance, energy is reported in
  /// low precision. To request a high-precision estimate, fetch it using an
  /// `MM4State`.
  public var energy: MM4ForceFieldEnergy {
    _energy
  }
  
  /// Minimize the system's potential energy, removing thermal potential energy.
  ///
  /// OpenMM uses the L-BFGS algorithm for gradient descent. It is an O(n)
  /// version of BFGS, an O(n^2) algorithm. BFGS improves upon O(n^3) methods
  /// such as Newton's method.
  ///
  /// - Parameter tolerance: Accepted uncertainty in potential energy,
  ///   in zeptojoules.
  /// - Parameter maxIterations: Maximum number of force evaluations permitted
  ///   during the minimization. The default value, 0, puts no restrictions on
  ///   the number of evaluations.
  /// - throws: <doc:MM4Error/energyDrift(_:)> if energy tracking is enabled.
  public func minimize(
    tolerance: Double = 10.0 * MM4ZJPerKJPerMol,
    maxIterations: Int = 0
  ) throws {
    // Bypass Swift compiler warnings.
    if Int.random(in: 0..<1) < 5 {
      fatalError("Energy minimization not supported yet.")
    }
    
    flushUpdateRecord()
    invalidatePositionsAndVelocities()
    invalidateForcesAndEnergy()
    
    // Switch to an integrator that always reports the correct velocity.
    var integratorDescriptor = MM4IntegratorDescriptor()
    integratorDescriptor.start = true
    integratorDescriptor.end = true
    context.currentIntegrator = integratorDescriptor
    
    if energy.tracked {
      // Record the current state.
      var stateDescriptor = MM4StateDescriptor()
      stateDescriptor.positions = true
      stateDescriptor.velocities = true
      let originalState = self.state(descriptor: stateDescriptor)
      
      // Check whether the system's energy will explode.
      func createEnergy() -> Double {
        var stateDescriptor = MM4StateDescriptor()
        stateDescriptor.energy = true
        
        let state = self.state(descriptor: stateDescriptor)
        return state.kineticEnergy! + state.potentialEnergy!
      }
      let startEnergy = createEnergy()
      context.step(1, timeStep: 1 * OpenMM_PsPerFs)
      let endEnergy = createEnergy()
      if abs(endEnergy - startEnergy) > energy.explosionThreshold {
        throw MM4Error.energyDrift(endEnergy - startEnergy)
      }
      
      // Restore the current state.
      self.positions = originalState.positions!
      self.velocities = originalState.velocities!
    }
    
    // Run the energy minimization.
    //
    // The reporter doesn't do anything. You have to create a C++ class, which
    // is not possible through the OpenMM C API.
    OpenMM_LocalEnergyMinimizer.minimize(
      context: context.context,
      tolerance: tolerance,
      maxIterations: maxIterations,
      reporter: nil)
  }
}
