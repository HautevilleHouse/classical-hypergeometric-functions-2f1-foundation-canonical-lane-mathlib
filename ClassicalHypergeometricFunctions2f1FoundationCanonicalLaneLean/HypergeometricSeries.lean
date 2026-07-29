import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricSeries2F1 where
  a : Type u
  b : Type v
  c : Type w
  z : Type x
  seriesDefined : Prop
  radiusConvergence : Prop
  analyticContinuation : Prop

structure HypergeometricSeriesEvidence (H : HypergeometricSeries2F1) where
  seriesDefinedClosed : H.seriesDefined
  radiusConvergenceClosed : H.radiusConvergence
  analyticContinuationClosed : H.analyticContinuation

def HypergeometricSeriesClosed (H : HypergeometricSeries2F1) : Prop :=
  H.seriesDefined ∧ H.radiusConvergence ∧ H.analyticContinuation

theorem hypergeometric_series_closed_from_evidence (H : HypergeometricSeries2F1)
    (E : HypergeometricSeriesEvidence H) : HypergeometricSeriesClosed H := by
  exact And.intro E.seriesDefinedClosed (And.intro E.radiusConvergenceClosed E.analyticContinuationClosed)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
