import HautevilleHouse.ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean

structure HypergeometricAdmittedObject where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  seriesConvergent : Prop
  continuationDefined : Prop
  conclusion : seriesConvergent ∧ continuationDefined

def HypergeometricWitnessClosed (O : HypergeometricAdmittedObject) : Prop :=
  O.seriesConvergent ∧ O.continuationDefined

end ClassicalHypergeometricFunctions2f1FoundationCanonicalLaneLean
end HautevilleHouse