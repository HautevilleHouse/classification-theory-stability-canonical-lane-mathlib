import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure AdmissibleClass where
  object : ModelTheoreticObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ModelTheoreticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse