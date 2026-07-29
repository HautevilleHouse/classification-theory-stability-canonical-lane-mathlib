import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ClassificationRankPackage where
  theory : Type u
  rankFunction : Type v
  finiteRankCondition : Prop
  superstableCondition : Prop

def ClassificationRankClosed (C : ClassificationRankPackage) : Prop :=
  C.finiteRankCondition ∧ C.superstableCondition

theorem classification_rank_closed_iff (C : ClassificationRankPackage) :
    ClassificationRankClosed C ↔ (C.finiteRankCondition ∧ C.superstableCondition) := by
  rfl

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse