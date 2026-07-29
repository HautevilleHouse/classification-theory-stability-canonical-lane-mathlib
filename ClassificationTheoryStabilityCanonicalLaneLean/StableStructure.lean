import canonicalLaneMathlib.AdmissibleClass

/-!
# Stable Structure Package
-/

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableStructurePackage where
  theory : Type u
  signature : Type v
  cardinalInvariant : Cardinal
  stabilityRank : Ordinal
  independenceRelation : Prop
  forkingSymmetry : Prop
  extensionProperty : Prop
  localCharacter : Prop
  finiteCharacter : Prop
  antiChainBound : Prop

def StableStructureClosed (S : StableStructurePackage) : Prop :=
  S.independenceRelation ∧ S.forkingSymmetry ∧ S.extensionProperty ∧
  S.localCharacter ∧ S.finiteCharacter ∧ S.antiChainBound

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse