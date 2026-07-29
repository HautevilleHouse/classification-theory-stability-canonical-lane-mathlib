import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ShelahUnstableFormula where
  language : Type u
  formula : Type v
  orderProperty : Prop
  strictOrderProperty : Prop
  independencePropertyFail : Prop
  unstable : Prop
  orderPropertyTerm : orderProperty
  strictOrderPropertyTerm : strictOrderProperty
  independencePropertyFailTerm : independencePropertyFail
  unstableTerm : unstable

structure ShelahUnstableFormulaEvidence (U : ShelahUnstableFormula) where
  orderPropertyClosed : U.orderProperty
  strictOrderPropertyClosed : U.strictOrderProperty
  independencePropertyFailClosed : U.independencePropertyFail
  unstableClosed : U.unstable

def ShelahUnstableFormulaClosed (U : ShelahUnstableFormula) : Prop :=
  U.orderProperty ∧ U.strictOrderProperty ∧ U.independencePropertyFail ∧ U.unstable

theorem shelah_unstable_formula_closed_from_evidence (U : ShelahUnstableFormula) (E : ShelahUnstableFormulaEvidence U) : ShelahUnstableFormulaClosed U := by
  exact And.intro E.orderPropertyClosed
    (And.intro E.strictOrderPropertyClosed
      (And.intro E.independencePropertyFailClosed E.unstableClosed))

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse