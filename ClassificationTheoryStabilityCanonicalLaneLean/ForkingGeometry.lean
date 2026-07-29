import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ForkingNotion (M : Type u) [Structure M] where
  divides : Formula M → Set M → Prop
  fork : Formula M → Set M → Prop
  dividesImpliesFork : ∀ φ A, divides φ A → fork φ A
  extension : ∀ φ A, ¬fork φ A → ∃ ψ, ⊢ ψ → φ ∧ ¬fork ψ A
  symmetryFork : ∀ φ ψ A, fork φ A → fork ψ A → fork (φ ∧ ψ) A

def Urank (p : Type M) : Ordinal :=
  sup { α+1 | ∃ q : Type M, q ⊇ p, q ≠ p, Urank q = α }

structure GeometricallyStableClass (M : Type u) [Structure M] extends StableClass M where
  uRankFinite : ∀ p : Type M, Urank p < ω

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse
