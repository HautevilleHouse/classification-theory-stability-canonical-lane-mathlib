import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure OStableCategorical where
  theory : Type u
  cardinal : Cardinal
  categoricalInSomeCardinal : Prop
  stable : Prop
  mHierarchy : Nat -> Prop
  primeModel : Prop
  categoricalInSomeCardinalTerm : categoricalInSomeCardinal
  stableTerm : stable
  mHierarchyTerm : mHierarchy
  primeModelTerm : primeModel

structure OStableCategoricalEvidence (O : OStableCategorical) where
  categoricalInSomeCardinalClosed : O.categoricalInSomeCardinal
  stableClosed : O.stable
  mHierarchyClosed : O.mHierarchy
  primeModelClosed : O.primeModel

def OStableCategoricalClosed (O : OStableCategorical) : Prop :=
  O.categoricalInSomeCardinal ∧ O.stable ∧ O.mHierarchy 0 ∧ O.primeModel

theorem o_stable_categorical_closed_from_evidence (O : OStableCategorical) (E : OStableCategoricalEvidence O) : OStableCategoricalClosed O := by
  exact And.intro E.categoricalInSomeCardinalClosed
    (And.intro E.stableClosed
      (And.intro (E.mHierarchyClosed 0) E.primeModelClosed))

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse