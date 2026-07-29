import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableRankPackage where
  rankFunction : Type u -> Ordinal
  monotonicity : Prop
  additivity : Prop
  finiteRankProperty : Prop

structure StableRankEvidence (R : StableRankPackage) where
  monotonicityClosed : R.monotonicity
  additivityClosed : R.additivity
  finiteRankPropertyClosed : R.finiteRankProperty

def StableRankClosed (R : StableRankPackage) : Prop :=
  R.monotonicity ∧ R.additivity ∧ R.finiteRankProperty

theorem stable_rank_closed_from_evidence (R : StableRankPackage) (E : StableRankEvidence R) : StableRankClosed R :=
  And.intro E.monotonicityClosed (And.intro E.additivityClosed E.finiteRankPropertyClosed)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse