import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.HypergeometricSeriesDefinition

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure ContiguousRelationPackage where
  relationA : Prop
  relationB : Prop
  relationC : Prop
  proofA : relationA
  proofB : relationB
  proofC : relationC

def ContiguousRelationClosed (P : ContiguousRelationPackage) : Prop :=
  P.relationA ∧ P.relationB ∧ P.relationC

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse