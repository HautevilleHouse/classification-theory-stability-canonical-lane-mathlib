import canonicalLaneMathlib.AdmissibleClass

/-!
# Forking Calculus Package
-/

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ForkingCalculusPackage {T : StableStructurePackage} where
  forkingDefined : Prop
  dividingFormula : Prop
  multiplicity : Prop
  weightBound : Prop
  chainCondition : Prop
  stationarity : Prop

def ForkingCalculusClosed {T : StableStructurePackage} (F : ForkingCalculusPackage T) : Prop :=
  F.forkingDefined ∧ F.dividingFormula ∧ F.multiplicity ∧
  F.weightBound ∧ F.chainCondition ∧ F.stationarity

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse