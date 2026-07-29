import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure IndependencePropertyPackage where
  theory : Type u
  formulaSet : Type v
  dividingLine : Prop
  ntp : Prop
  ntdp : Prop

def IndependencePropertyClosed (I : IndependencePropertyPackage) : Prop :=
  I.dividingLine ∧ I.ntp ∧ I.ntdp

theorem independence_property_closed_iff (I : IndependencePropertyPackage) :
    IndependencePropertyClosed I ↔ (I.dividingLine ∧ I.ntp ∧ I.ntdp) := by
  unfold IndependencePropertyClosed
  rfl

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse