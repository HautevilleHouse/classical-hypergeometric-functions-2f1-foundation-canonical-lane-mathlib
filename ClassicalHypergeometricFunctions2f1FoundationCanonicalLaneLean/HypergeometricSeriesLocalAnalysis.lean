import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricSeriesLocalAnalysisPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  expansionPoint : ℂ
  radiusOfConvergence : ℝ
  analyticBehavior : Prop
  exponentAnalysis : Prop

structure HypergeometricSeriesLocalAnalysisEvidence (H : HypergeometricSeriesLocalAnalysisPackage) where
  convergenceRadiusPositive : H.radiusOfConvergence > 0
  analyticBehaviourClosed : H.analyticBehavior
  exponentAnalysisClosed : H.exponentAnalysis

def HypergeometricSeriesLocalAnalysisClosed (H : HypergeometricSeriesLocalAnalysisPackage) : Prop :=
  H.radiusOfConvergence > 0 ∧ H.analyticBehavior ∧ H.exponentAnalysis

theorem hypergeometric_series_local_analysis_closed_from_evidence (H : HypergeometricSeriesLocalAnalysisPackage) (E : HypergeometricSeriesLocalAnalysisEvidence H) :
    HypergeometricSeriesLocalAnalysisClosed H := by
  exact And.intro E.convergenceRadiusPositive (And.intro E.analyticBehaviourClosed E.exponentAnalysisClosed)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
