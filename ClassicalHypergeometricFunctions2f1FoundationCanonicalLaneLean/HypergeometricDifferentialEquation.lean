import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricDifferentialEquation where
  a : ℝ
  b : ℝ
  c : ℝ
  equation : ℝ → ℝ → ℝ  -- f(z) -> f''(z)
  solutionSpaceDimension : ℕ
  twoF1IsSolution : Prop

structure HypergeometricDifferentialEquationEvidence (H : HypergeometricDifferentialEquation) where
  solutionSpaceDimensionClosed : H.solutionSpaceDimension = 2
  twoF1IsSolutionClosed : H.twoF1IsSolution

def HypergeometricDifferentialEquationClosed (H : HypergeometricDifferentialEquation) : Prop :=
  H.solutionSpaceDimension = 2 ∧ H.twoF1IsSolution

theorem hypergeometric_differential_equation_closed_from_evidence (H : HypergeometricDifferentialEquation) (Ev : HypergeometricDifferentialEquationEvidence H) :
    HypergeometricDifferentialEquationClosed H := by
  exact And.intro Ev.solutionSpaceDimensionClosed Ev.twoF1IsSolutionClosed

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse