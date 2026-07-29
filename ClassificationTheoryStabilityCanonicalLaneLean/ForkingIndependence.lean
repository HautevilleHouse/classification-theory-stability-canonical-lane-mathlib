import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ForkingIndependencePackage where
  monsterModel : Type u
  forkingRelation : Prop
  nonForkingExtension : Prop
  independenceTheorem : Prop

structure ForkingIndependenceEvidence (F : ForkingIndependencePackage) where
  forkingRelationClosed : F.forkingRelation
  nonForkingExtensionClosed : F.nonForkingExtension
  independenceTheoremClosed : F.independenceTheorem

def ForkingIndependenceClosed (F : ForkingIndependencePackage) : Prop :=
  F.forkingRelation ∧ F.nonForkingExtension ∧ F.independenceTheorem

theorem forking_independence_closed_from_evidence (F : ForkingIndependencePackage) (E : ForkingIndependenceEvidence F) : ForkingIndependenceClosed F :=
  And.intro E.forkingRelationClosed (And.intro E.nonForkingExtensionClosed E.independenceTheoremClosed)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse