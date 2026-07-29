import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricAdmittedObject where
  a b c : ℂ
  series : HypergeometricSeries a b c
  deq : HypergeometricDifferentialEquation a b c
  cont : ContiguousRelation a b c
  trans : TransformationFormula a b c
  fuchsianClosed : FuchsianClosed a b c deq
  contiguousClosed : ContiguousRelationClosed a b c cont
  transformationClosed : TransformationClosed a b c trans

structure AdmissibleClass where
  object : HypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (FuchsianClosed A.object.a A.object.b A.object.c A.object.deq) ∧
  (ContiguousRelationClosed A.object.a A.object.b A.object.c A.object.cont) ∧
  (TransformationClosed A.object.a A.object.b A.object.c A.object.trans) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse