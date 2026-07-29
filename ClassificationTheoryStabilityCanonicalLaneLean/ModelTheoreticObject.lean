import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ModelTheoreticStructure where
  carrier : Type
  relations : Type
  functions : Type
  languageSignature : Prop
  elementaryClass : Prop

structure ModelTheoreticObject where
  structure : ModelTheoreticStructure
  completeTheory : Prop
  stableTheory : Prop
  unsuperstable : Prop
  conclusion : stableTheory ∧ completeTheory

def ModelTheoreticWitnessClosed (O : ModelTheoreticObject) : Prop :=
  O.stableTheory ∧ O.completeTheory

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse