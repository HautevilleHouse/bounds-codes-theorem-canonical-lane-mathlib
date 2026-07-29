import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ErrorCorrectionBoundsPackage (A : AdmissibleClass) where
  blockLength : ℕ
  messageSize : ℕ
  minimumDistance : ℕ
  hammingBoundSatisfied : Prop
  singletonBoundSatisfied : Prop
  gilbertVarshamovBoundSatisfied : Prop

structure ErrorCorrectionBoundsEvidence (A : AdmissibleClass) (B : ErrorCorrectionBoundsPackage A) where
  hammingBoundSatisfiedClosed : B.hammingBoundSatisfied
  singletonBoundSatisfiedClosed : B.singletonBoundSatisfied
  gilbertVarshamovBoundSatisfiedClosed : B.gilbertVarshamovBoundSatisfied

def ErrorCorrectionBoundsClosed (A : AdmissibleClass) (B : ErrorCorrectionBoundsPackage A) : Prop :=
  B.hammingBoundSatisfied ∧ B.singletonBoundSatisfied ∧ B.gilbertVarshamovBoundSatisfied

theorem error_correction_bounds_closed_from_evidence (A : AdmissibleClass) (B : ErrorCorrectionBoundsPackage A) (E : ErrorCorrectionBoundsEvidence A B) :
    ErrorCorrectionBoundsClosed A B := by
  exact And.intro E.hammingBoundSatisfiedClosed (And.intro E.singletonBoundSatisfiedClosed E.gilbertVarshamovBoundSatisfiedClosed)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse