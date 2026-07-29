import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure AdmissibleClass where
  object : HypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HypergeometricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse