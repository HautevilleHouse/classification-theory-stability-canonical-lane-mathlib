import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableEmbeddingPackage where
  theory : Type u
  substructure : Type v
  stableEmbeddingProperty : Prop
  elementarity : Prop

def StableEmbeddingClosed (S : StableEmbeddingPackage) : Prop :=
  S.stableEmbeddingProperty ∧ S.elementarity

theorem stable_embedding_closed_iff (S : StableEmbeddingPackage) :
    StableEmbeddingClosed S ↔ (S.stableEmbeddingProperty ∧ S.elementarity) := by
  rfl

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse