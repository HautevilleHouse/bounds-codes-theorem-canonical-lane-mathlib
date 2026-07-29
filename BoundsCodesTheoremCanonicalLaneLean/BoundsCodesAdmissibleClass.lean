import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure BoundsAdmittedObject where
  finiteField : Type u
  fieldSize : ℕ
  codeLength : ℕ
  codeDimension : ℕ
  minimumDistance : ℕ
  codeExists : Prop
  conclusion : codeExists

structure AdmissibleClass where
  object : BoundsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BoundsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse