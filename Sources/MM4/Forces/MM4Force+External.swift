//
//  MM4Force+External.swift
//
//
//  Created by Philip Turner on 10/14/23.
//

import OpenMM

class MM4ExternalForce: MM4Force {
  required init(system: MM4System) {
    
    let force = OpenMM_CustomExternalForce(energy: """
      x * fx + y * fy + z * fz;
      """)
    force.addPerParticleParameter(name: "f0")
    force.addPerParticleParameter(name: "f1")
    force.addPerParticleParameter(name: "f2")
    
    let array = OpenMM_DoubleArray(size: 3)
    array[0] = 0
    array[1] = 0
    array[2] = 0
    
    let atoms = system.parameters.atoms
    for atomID in atoms.atomicNumbers.indices {
      force.addParticle(atomID, parameters: array)
    }
    
    // Setting as force group 0 should allow the force to only be called at the
    // beginning of every intergrator time step (which may span multiple actual
    // steps).
    super.init(forces: [force], forceGroup: 0)
  }
  
  // Regardless of whether they're specified at the start of the forcefield,
  // parameters will still be updated this way.
  //
  // The caller should check that the array's size matches the number of atoms
  // in the system. Otherwise, there will be an unexplained crash at runtime.
  func updateForces(_ forces: [SIMD3<Float>], context: MM4Context) {
    guard let forceObject = self.forces[0] as? OpenMM_CustomExternalForce else {
      fatalError("External force was not an external force.")
    }
    let array = OpenMM_DoubleArray(size: 3)
    for atomID in forces.indices {
      // Units: zJ/nm -> kJ/mol/nm
      var force = SIMD3<Double>(forces[atomID])
      force *= MM4KJPerMolPerZJ
      
      // Force is the negative gradient of potential energy.
      force = -force
      
      for lane in 0..<3 {
        array[lane] = force[lane]
      }
      forceObject.setParticleParameters(
        index: atomID, particle: atomID, parameters: array)
    }
    forceObject.updateParametersInContext(context.context)
  }
}
