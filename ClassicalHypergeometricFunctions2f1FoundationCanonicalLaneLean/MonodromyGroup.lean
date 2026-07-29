import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure MonodromyGroupPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  groupPresentation : Prop
  representationFidelity : Prop
  monodromyMatrices : LinearMap ℂ (Fin 2 → ℂ) (Fin 2 → ℂ)

structure MonodromyGroupEvidence (M : MonodromyGroupPackage) where
  presentationFinitelyGenerated : M.groupPresentation
  representationFaithful : M.representationFidelity
  monodromyMatricesClosed : True

def MonodromyGroupClosed (M : MonodromyGroupPackage) : Prop :=
  M.groupPresentation ∧ M.representationFidelity

theorem monodromy_group_closed_from_evidence (M : MonodromyGroupPackage) (E : MonodromyGroupEvidence M) :
    MonodromyGroupClosed M := by
  exact And.intro E.presentationFinitelyGenerated E.representationFaithful

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
