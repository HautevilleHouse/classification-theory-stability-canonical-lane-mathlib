import canonicalLaneMathlib.AdmissibleClass
import ClassificationTheoryStabilityCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

def ConstrainedStabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stability_endgame (A : AdmissibleClass) :
    ConstrainedStabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse
