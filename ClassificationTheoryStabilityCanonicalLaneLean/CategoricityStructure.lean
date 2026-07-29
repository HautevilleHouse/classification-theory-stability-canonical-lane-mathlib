import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure CompleteTheory (L : FirstOrder.Language) where
  sentences : Set (FirstOrder.Language.Sentence L)
  consistent : Prop
  complete : Prop

structure CategoricityClass (L : FirstOrder.Language) (κ : Cardinal) where
  theory : CompleteTheory L
  categorical : Prop
  categoricityWitness : ∀ (M N : Model L), Cardinal.mk (Carrier M) = κ → Cardinal.mk (Carrier N) = κ → Nonempty (M ≃[L] N)

def totallyTranscendental (T : CompleteTheory L) : Prop :=
  ∀ (κ : Cardinal), κ ≥ Cardinal.aleph0 → CategoricityClass T κ

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse
