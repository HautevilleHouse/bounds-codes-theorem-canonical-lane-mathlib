import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodeRateBound where
  rateUpper : ℚ
  rateLower : ℚ
  shannonRate : ℚ
  gap : ℚ
  gapPositivity : Prop
  shannonBoundAchievable : Prop

structure CodeRateBoundEvidence (B : CodeRateBound) where
  gapPositivityClosed : B.gapPositivity
  shannonBoundAchievableClosed : B.shannonBoundAchievable

def CodeRateBoundClosed (B : CodeRateBound) : Prop :=
  B.gapPositivity ∧ B.shannonBoundAchievable

theorem code_rate_bound_closed_from_evidence (B : CodeRateBound)
    (E : CodeRateBoundEvidence B) : CodeRateBoundClosed B := by
  exact And.intro E.gapPositivityClosed E.shannonBoundAchievableClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
