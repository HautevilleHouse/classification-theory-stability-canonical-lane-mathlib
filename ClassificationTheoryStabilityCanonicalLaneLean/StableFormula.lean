import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableFormulaPackage where
  structureType : Type u
  relationSymbols : List (String × Nat)
  formula : Type v
  infiniteModelExists : Prop
  stabilityRank : Nat

def StableFormulaClosed (S : StableFormulaPackage) : Prop :=
  S.infiniteModelExists ∧ S.stabilityRank < ω

theorem stable_formula_closed_iff (S : StableFormulaPackage) :
    StableFormulaClosed S ↔ (S.infiniteModelExists ∧ S.stabilityRank < ω) := by
  rfl

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse