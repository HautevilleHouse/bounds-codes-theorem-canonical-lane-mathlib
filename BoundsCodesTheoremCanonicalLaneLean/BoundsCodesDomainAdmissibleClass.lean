import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure BoundsAdmittedObject where
  codeSpace : Type
  dimension : ℕ
  distanceMetric : Type
  encodingFunction : codeSpace → distanceMetric
  minimumDistance : ℝ
  rateConstraint : ℝ
  conclusion : minimumDistance > 0 ∧ rateConstraint > 0

structure AdmissibleClass where
  object : BoundsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse