import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure GilbertVarshamovBoundPackage where
  codeLength : Nat
  alphabetSize : Nat
  minimumDistance : Nat
  blockLength : Nat
  decodingRadius : Nat
  sphereVolume : Nat
  sphereVolumePositive : sphereVolume > 0
  gilbertVarshamovInequality : Prop
  lowerBound : Prop

structure GilbertVarshamovBoundEvidence (P : GilbertVarshamovBoundPackage) where
  gilbertVarshamovInequalityClosed : P.gilbertVarshamovInequality
  lowerBoundClosed : P.lowerBound

def GilbertVarshamovBoundClosed (P : GilbertVarshamovBoundPackage) : Prop :=
  P.gilbertVarshamovInequality ∧ P.lowerBound

theorem gilbert_varshamov_bound_closed_from_evidence (P : GilbertVarshamovBoundPackage)
    (E : GilbertVarshamovBoundEvidence P) : GilbertVarshamovBoundClosed P := by
  exact And.intro E.gilbertVarshamovInequalityClosed E.lowerBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse