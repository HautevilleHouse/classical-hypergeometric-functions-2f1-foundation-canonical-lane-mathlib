import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure GaussHypergeometricSeries where
  a : ℝ
  b : ℝ
  c : ℝ
  z : ℝ
  series : ℕ → ℝ
  radiusOfConvergence : ℝ
  analyticContinuationExists : Prop

structure GaussHypergeometricSeriesEvidence (G : GaussHypergeometricSeries) where
  seriesDefined : G.series 0 = 1 ∧ ∀ n, G.series (n+1) = ((G.a + n)*(G.b + n))/((G.c + n)*(n+1)) * G.series n
  radiusPositive : G.radiusOfConvergence > 0
  analyticContinuationExistsClosed : G.analyticContinuationExists

def GaussHypergeometricSeriesClosed (G : GaussHypergeometricSeries) : Prop :=
  (G.series 0 = 1 ∧ ∀ n, G.series (n+1) = ((G.a + n)*(G.b + n))/((G.c + n)*(n+1)) * G.series n) ∧
  G.radiusOfConvergence > 0 ∧
  G.analyticContinuationExists

theorem gauss_hypergeometric_series_closed_from_evidence (G : GaussHypergeometricSeries) (E : GaussHypergeometricSeriesEvidence G) :
    GaussHypergeometricSeriesClosed G := by
  exact And.intro E.seriesDefined (And.intro E.radiusPositive E.analyticContinuationExistsClosed)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse