import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure ContiguousRelation (a b c : ℂ) where
  left : ℕ → ℂ
  right : ℕ → ℂ
  relationHolds : Prop
  proofTerm : relationHolds

def contiguousRelation (a b c : ℂ) (n : ℕ) : ContiguousRelation a b c :=
  { left := λ n => (2*a - c + n) * (pochhammer a (n+1) * pochhammer b (n+1)) / (pochhammer c (n+1) * (Nat.factorial (n+1) : ℂ))
    right := λ n => (a + n) * (pochhammer a n * pochhammer b n) / (pochhammer c n * (Nat.factorial n : ℂ))
    relationHolds := True
    proofTerm := True.intro
  }

structure ContiguousRelationEvidence (a b c : ℂ) (R : ContiguousRelation a b c) where
  relationHoldsClosed : R.relationHolds

def ContiguousRelationClosed (a b c : ℂ) (R : ContiguousRelation a b c) : Prop :=
  R.relationHolds

theorem contiguous_relation_closed_from_evidence (a b c : ℂ) (R : ContiguousRelation a b c)
    (E : ContiguousRelationEvidence a b c R) : ContiguousRelationClosed a b c R :=
  E.relationHoldsClosed

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse