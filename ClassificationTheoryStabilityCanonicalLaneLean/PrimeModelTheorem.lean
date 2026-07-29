import canonicalLaneMathlib.AdmissibleClass

/-!
# Prime Model Theorem Package
-/

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure PrimeModelTheoremPackage {T : StableStructurePackage}
    {F : ForkingCalculusPackage T}
    {R : StableRankAnalysisPackage T F} where
  primeModelExists : Prop
  primeModelUnique : Prop
  dominationCondition : Prop
  isolationRankCondition : Prop
  atomicModels : Prop
  countabilityCondition : Prop

def PrimeModelTheoremClosed {T : StableStructurePackage}
    {F : ForkingCalculusPackage T}
    {R : StableRankAnalysisPackage T F} (P : PrimeModelTheoremPackage T F R) : Prop :=
  P.primeModelExists ∧ P.primeModelUnique ∧ P.dominationCondition ∧
  P.isolationRankCondition ∧ P.atomicModels ∧ P.countabilityCondition

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse