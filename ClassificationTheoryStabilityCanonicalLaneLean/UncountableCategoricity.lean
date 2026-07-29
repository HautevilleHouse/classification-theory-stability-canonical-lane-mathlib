import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure UncountableCategoricityPackage where
  theory : Type u
  uncountableModels : Type v
  categoricityInSomeUncountable : Prop
  totalTranscendental : Prop

def UncountableCategoricityClosed (U : UncountableCategoricityPackage) : Prop :=
  U.categoricityInSomeUncountable ∧ U.totalTranscendental

theorem uncountable_categoricity_closed_iff (U : UncountableCategoricityPackage) :
    UncountableCategoricityClosed U ↔ (U.categoricityInSomeUncountable ∧ U.totalTranscendental) := by
  rfl

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse