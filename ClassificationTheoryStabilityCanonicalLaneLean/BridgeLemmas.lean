import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ModelTheoreticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse