import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassificationTheoryStabilityCanonicalLaneLean.GeometricStabilityClassification
import HautevilleHouse.ClassificationTheoryStabilityCanonicalLaneLean.StableTheoryFormulas

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure ShelahClassificationPackage where
  theory : StableTheoryFormula
  stableCardinality : Prop
  orderPropertyAbsence : Prop
  stabilitySpectrum : Prop

structure ShelahClassificationEvidence (S : ShelahClassificationPackage) where
  stableCardinalityClosed : S.stableCardinality
  orderPropertyAbsenceClosed : S.orderPropertyAbsence
  stabilitySpectrumClosed : S.stabilitySpectrum

def ShelahClassificationClosed (S : ShelahClassificationPackage) : Prop :=
  S.stableCardinality ∧ S.orderPropertyAbsence ∧ S.stabilitySpectrum

theorem shelah_classification_closed_from_evidence (S : ShelahClassificationPackage) (E : ShelahClassificationEvidence S) : ShelahClassificationClosed S :=
  And.intro E.stableCardinalityClosed (And.intro E.orderPropertyAbsenceClosed E.stabilitySpectrumClosed)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse