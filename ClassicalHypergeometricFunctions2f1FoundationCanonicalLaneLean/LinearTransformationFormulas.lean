import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure LinearTransformationFormulasPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  transformationType : String
  domainValidity : Set ℂ
  formulaExpression : ℂ → ℂ

structure LinearTransformationFormulasEvidence (L : LinearTransformationFormulasPackage) where
  transformationCorrect : ∀ z ∈ L.domainValidity, L.formulaExpression z = 0
  connectivityPreserved : L.domainValidity ≠ ∅

def LinearTransformationFormulasClosed (L : LinearTransformationFormulasPackage) : Prop :=
  (∀ z ∈ L.domainValidity, L.formulaExpression z = 0) ∧ L.domainValidity ≠ ∅

theorem linear_transformation_formulas_closed_from_evidence (L : LinearTransformationFormulasPackage) (E : LinearTransformationFormulasEvidence L) :
    LinearTransformationFormulasClosed L := by
  exact And.intro E.transformationCorrect E.connectivityPreserved

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
