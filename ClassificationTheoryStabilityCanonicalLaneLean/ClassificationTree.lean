import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ClassificationTree where
  theory : Type u
  monsterModel : Type v
  tree : Type w
  depthBounded : Prop
  root : tree
  branching : Nat -> Prop
  isRegularType : Prop
  depthBoundedTerm : depthBounded
  rootTerm : root
  branchingTerm : branching
  isRegularTypeTerm : isRegularType

structure ClassificationTreeEvidence (T : ClassificationTree) where
  depthBoundedClosed : T.depthBounded
  rootClosed : True  -- root is a term, not a proposition
  branchingClosed : T.branching
  isRegularTypeClosed : T.isRegularType

def ClassificationTreeClosed (T : ClassificationTree) : Prop :=
  T.depthBounded ∧ T.branching 0 ∧ T.isRegularType

theorem classification_tree_closed_from_evidence (T : ClassificationTree) (E : ClassificationTreeEvidence T) : ClassificationTreeClosed T := by
  exact And.intro E.depthBoundedClosed
    (And.intro (E.branchingClosed 0) E.isRegularTypeClosed)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse