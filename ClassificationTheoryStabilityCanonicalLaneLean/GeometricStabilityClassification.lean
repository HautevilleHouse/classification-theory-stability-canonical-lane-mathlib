import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationTheoryStabilityCanonicalLaneLean.StableRank
import HautevilleHouse.ClassificationTheoryStabilityCanonicalLaneLean.ForkingIndependence

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure GeometricStabilityClassificationPackage where
  monsterModel : Type u
  minimalTypes : Prop
  stronglyMinimalSet : Prop
  disintegratedDependence : Prop
  trivialForking : Prop

structure GeometricStabilityClassificationEvidence (G : GeometricStabilityClassificationPackage) where
  minimalTypesClosed : G.minimalTypes
  stronglyMinimalSetClosed : G.stronglyMinimalSet
  disintegratedDependenceClosed : G.disintegratedDependence
  trivialForkingClosed : G.trivialForking

def GeometricStabilityClassificationClosed (G : GeometricStabilityClassificationPackage) : Prop :=
  G.minimalTypes ∧ G.stronglyMinimalSet ∧ G.disintegratedDependence ∧ G.trivialForking

theorem geometric_stability_classification_closed_from_evidence
    (G : GeometricStabilityClassificationPackage) (E : GeometricStabilityClassificationEvidence G) :
    GeometricStabilityClassificationClosed G :=
  And.intro E.minimalTypesClosed (And.intro E.stronglyMinimalSetClosed (And.intro E.disintegratedDependenceClosed E.trivialForkingClosed))

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse