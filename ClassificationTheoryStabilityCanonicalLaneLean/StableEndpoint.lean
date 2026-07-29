import canonicalLaneMathlib.AdmissibleClass

/-!
# Stable Endpoint Classification Package
-/

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableEndpointClassificationPackage {T : StableStructurePackage}
    {F : ForkingCalculusPackage T} {R : StableRankAnalysisPackage T F}
    {P : PrimeModelTheoremPackage T F R} where
  theoryClassified : Prop
  stabilitySpectrumKnown : Prop
  endpointDefined : Prop
  superstableCase : Prop
  omegaStableCase : Prop

def StableEndpointClassificationClosed {T : StableStructurePackage}
    {F : ForkingCalculusPackage T} {R : StableRankAnalysisPackage T F}
    {P : PrimeModelTheoremPackage T F R}
    (E : StableEndpointClassificationPackage T F R P) : Prop :=
  E.theoryClassified ∧ E.stabilitySpectrumKnown ∧ E.endpointDefined ∧
  E.superstableCase ∧ E.omegaStableCase

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse