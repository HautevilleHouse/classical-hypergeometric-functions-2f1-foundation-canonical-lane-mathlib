import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure QuadraticTransformationFormulasPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  transformationParameter : ℂ
  domain : Set ℂ
  quadraticRelation : ℂ → ℂ → Prop

structure QuadraticTransformationFormulasEvidence (Q : QuadraticTransformationFormulasPackage) where
  relationSatisfied : ∀ z ∈ Q.domain, Q.quadraticRelation z 0
  transformationNondegenerate : Q.transformationParameter ≠ 0

def QuadraticTransformationFormulasClosed (Q : QuadraticTransformationFormulasPackage) : Prop :=
  (∀ z ∈ Q.domain, Q.quadraticRelation z 0) ∧ Q.transformationParameter ≠ 0

theorem quadratic_transformation_formulas_closed_from_evidence (Q : QuadraticTransformationFormulasPackage) (E : QuadraticTransformationFormulasEvidence Q) :
    QuadraticTransformationFormulasClosed Q := by
  exact And.intro E.relationSatisfied E.transformationNondegenerate

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
