import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.HypergeometricSeries
import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.EulerIntegralRepresentation

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

def ConstrainedHypergeometricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hypergeometric_endgame (A : AdmissibleClass) :
    ConstrainedHypergeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
