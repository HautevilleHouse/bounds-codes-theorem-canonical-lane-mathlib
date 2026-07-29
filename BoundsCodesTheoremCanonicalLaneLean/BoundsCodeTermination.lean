import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure BoundsCodesTerminationPackage where
  codeLength : Nat
  alphabetSize : Nat
  blockLength : Nat
  decodingRadius : Nat
  decodingRadiusNonnegative : decodingRadius ≥ 0
  errorCorrectionCapacity : Prop
  coveringRadiusBound : Prop
  packingRadiusBound : Prop
  gilbertVarshamovBound : Prop
  spherePackingBound : Prop

structure BoundsCodesTerminationEvidence (P : BoundsCodesTerminationPackage) where
  errorCorrectionCapacityClosed : P.errorCorrectionCapacity
  coveringRadiusBoundClosed : P.coveringRadiusBound
  packingRadiusBoundClosed : P.packingRadiusBound
  gilbertVarshamovBoundClosed : P.gilbertVarshamovBound
  spherePackingBoundClosed : P.spherePackingBound

def BoundsCodesTerminationClosed (P : BoundsCodesTerminationPackage) : Prop :=
  P.errorCorrectionCapacity ∧ P.coveringRadiusBound ∧ P.packingRadiusBound ∧ P.gilbertVarshamovBound ∧ P.spherePackingBound

theorem bounds_codes_termination_closed_from_evidence (P : BoundsCodesTerminationPackage)
    (E : BoundsCodesTerminationEvidence P) : BoundsCodesTerminationClosed P := by
  exact And.intro E.errorCorrectionCapacityClosed
    (And.intro E.coveringRadiusBoundClosed
      (And.intro E.packingRadiusBoundClosed
        (And.intro E.gilbertVarshamovBoundClosed E.spherePackingBoundClosed)))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse