import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.HypergeometricSeriesDefinition

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure KummerTransformationPackage where
  transformation1 : Prop
  transformation2 : Prop
  transformation3 : Prop
  proof1 : transformation1
  proof2 : transformation2
  proof3 : transformation3

def KummerTransformationClosed (P : KummerTransformationPackage) : Prop :=
  P.transformation1 ∧ P.transformation2 ∧ P.transformation3

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse