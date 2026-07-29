import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure Formula (α : Type u) where
  vars : List α
  connective : String
  subformulas : List (Formula α)
  quantifiers : List (String × α)

def type (M : Type u) [Structure M] (A : Set M) (n : ℕ) : Set (n → M) := Set.univ

structure StabilityClass (M : Type u) [Structure M] where
  κ : Cardinal
  stable : Prop
  stableCard : κ ≤ Cardinal.mk M → stable

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse
