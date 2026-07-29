import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure IndependenceRelation (M : Type u) [Structure M] where
  indep : Set M → Set M → Set M → Prop
  symmetry : ∀ A B C, indep A B C → indep B A C
  monotonicity : ∀ A B C D, indep A B C → A ⊆ D → indep D B C
  localCharacter : ∀ A, ∃ (I : Set M) (κ : Cardinal), κ < |M| ∧ indep I A A ∧ (∀ x ∈ A, x ∈ acl (I ∪ {a | indep {a} A I}))

structure StableIndependence extends IndependenceRelation M where
  nop : ∀ A B, indep A B B → ∀ φ(x,y) ∈ formulæ (M), ∃ D ⊆ B, |D| ≤ |T| ∧ (∀ b ∈ B, M ⊨ φ(a,b) ↔ ∃ d ∈ D, M ⊨ φ(a,d))

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse
