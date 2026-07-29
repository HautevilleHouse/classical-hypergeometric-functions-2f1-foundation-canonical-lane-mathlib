import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure ContiguousFunctionRelationsPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  shiftDirection : String
  relationEquations : Prop
  parametersDistinguishable : Prop

structure ContiguousFunctionRelationsEvidence (C : ContiguousFunctionRelationsPackage) where
  shiftWellDefined : C.relationEquations
  parametersNondegenerate : C.parametersDistinguishable

def ContiguousFunctionRelationsClosed (C : ContiguousFunctionRelationsPackage) : Prop :=
  C.relationEquations ∧ C.parametersDistinguishable

theorem contiguous_function_relations_closed_from_evidence (C : ContiguousFunctionRelationsPackage) (E : ContiguousFunctionRelationsEvidence C) :
    ContiguousFunctionRelationsClosed C := by
  exact And.intro E.shiftWellDefined E.parametersNondegenerate

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
