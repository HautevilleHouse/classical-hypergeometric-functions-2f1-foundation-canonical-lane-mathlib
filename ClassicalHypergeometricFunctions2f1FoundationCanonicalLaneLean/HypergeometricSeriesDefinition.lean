import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricSeriesPackage where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radiusOfConvergence : ℂ
  convergenceCondition : Prop
  formalDefinition : Prop

def HypergeometricSeriesDefined (P : HypergeometricSeriesPackage) : Prop :=
  P.convergenceCondition ∧ P.formalDefinition

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse