import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FuchsianClosed A.object.a A.object.b A.object.c A.object.deq ∧
  ContiguousRelationClosed A.object.a A.object.b A.object.c A.object.cont ∧
  TransformationClosed A.object.a A.object.b A.object.c A.object.trans

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  And.intro A.object.fuchsianClosed (And.intro A.object.contiguousClosed A.object.transformationClosed)

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse