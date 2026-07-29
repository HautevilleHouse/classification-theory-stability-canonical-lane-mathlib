import canonicalLaneMathlib.AdmissibleClass

/-!
# Stable Rank Analysis Package
-/

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableRankAnalysisPackage {T : StableStructurePackage}
    {F : ForkingCalculusPackage T} where
  rankDefined : Prop
  rankAdditive : Prop
  rankContinuous : Prop
  rankBounded : Prop
  rankMaximizing : Prop
  equalityCondition : Prop

def StableRankAnalysisClosed {T : StableStructurePackage}
    {F : ForkingCalculusPackage T} (R : StableRankAnalysisPackage T F) : Prop :=
  R.rankDefined ∧ R.rankAdditive ∧ R.rankContinuous ∧
  R.rankBounded ∧ R.rankMaximizing ∧ R.equalityCondition

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse