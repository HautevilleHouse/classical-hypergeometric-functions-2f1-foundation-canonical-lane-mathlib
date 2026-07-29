import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure GabrielTheoremPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  analyticContinuationRegion : Set ℂ
  monodromyRepresentation : Prop
  exponentDifference : ℂ

structure GabrielTheoremEvidence (G : GabrielTheoremPackage) where
  analyticContinuationDefined : G.analyticContinuationRegion ≠ ∅
  monodromyRepresentationClosed : G.monodromyRepresentation
  exponentDifferenceNonInteger : G.exponentDifference ∉ ℤ

def GabrielTheoremClosed (G : GabrielTheoremPackage) : Prop :=
  G.analyticContinuationRegion ≠ ∅ ∧ G.monodromyRepresentation ∧ G.exponentDifference ∉ ℤ

theorem gabriel_theorem_closed_from_evidence (G : GabrielTheoremPackage) (E : GabrielTheoremEvidence G) :
    GabrielTheoremClosed G := by
  exact And.intro E.analyticContinuationDefined (And.intro E.monodromyRepresentationClosed E.exponentDifferenceNonInteger)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
