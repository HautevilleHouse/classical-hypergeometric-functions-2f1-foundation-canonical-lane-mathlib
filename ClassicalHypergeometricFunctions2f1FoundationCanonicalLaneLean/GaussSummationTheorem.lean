import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.HypergeometricSeriesDefinition

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure GaussSummationTheoremPackage where
  summationFormula : Prop
  condition : Prop
  proof : summationFormula

def GaussSummationTheoremClosed (P : GaussSummationTheoremPackage) : Prop :=
  P.summationFormula ∧ P.condition

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse