import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure ClausenRepresentationPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  representationType : String
  integralRepresentation : Prop
  differentialEquationSatisfied : Prop

structure ClausenRepresentationEvidence (C : ClausenRepresentationPackage) where
  integralRepDefined : C.integralRepresentation
  diffEqHolds : C.differentialEquationSatisfied
  repNondegenerate : C.a ∉ ℤ ∨ C.b ∉ ℤ ∨ C.c ∉ ℤ

def ClausenRepresentationClosed (C : ClausenRepresentationPackage) : Prop :=
  C.integralRepresentation ∧ C.differentialEquationSatisfied ∧ (C.a ∉ ℤ ∨ C.b ∉ ℤ ∨ C.c ∉ ℤ)

theorem clausen_representation_closed_from_evidence (C : ClausenRepresentationPackage) (E : ClausenRepresentationEvidence C) :
    ClausenRepresentationClosed C := by
  exact And.intro E.integralRepDefined (And.intro E.diffEqHolds E.repNondegenerate)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
