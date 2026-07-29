import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BoundsCodesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundsCodesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
