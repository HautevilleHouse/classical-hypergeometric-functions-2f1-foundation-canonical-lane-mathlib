import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure PfaffTransformationPackage where
  a : Type u
  b : Type v
  c : Type w
  z : Type x
  transformedSeries : a → b → c → z → z
  transformationFormula : Prop
  convergencePreserved : Prop
  transformationFormulaTerm : transformationFormula
  convergencePreservedTerm : convergencePreserved

structure PfaffTransformationEvidence (P : PfaffTransformationPackage) where
  transformationFormulaClosed : P.transformationFormula
  convergencePreservedClosed : P.convergencePreserved

def PfaffTransformationClosed (P : PfaffTransformationPackage) : Prop :=
  P.transformationFormula ∧ P.convergencePreserved

theorem pfaff_transformation_closed_from_evidence (P : PfaffTransformationPackage) (E : PfaffTransformationEvidence P) :
  PfaffTransformationClosed P := by
  exact And.intro E.transformationFormulaClosed E.convergencePreservedClosed

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse
