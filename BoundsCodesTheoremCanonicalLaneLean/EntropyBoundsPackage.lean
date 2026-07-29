import BoundsCodesTheoremCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure EntropyBoundsPackage where
  alphabetSize : ℕ
  blockLength : ℕ
  rate : ℝ
  relativeDistance : ℝ
  gilbertVarshamovBoundSatisfied : Prop
  entropyRateFunction : ℝ → ℝ
  boundInequality : Prop

structure EntropyBoundsEvidence (E : EntropyBoundsPackage) where
  gilbertVarshamovClosed : E.gilbertVarshamovBoundSatisfied
  entropyRateFunctionDefined : True
  boundInequalityClosed : E.boundInequality

def EntropyBoundsClosed (E : EntropyBoundsPackage) : Prop :=
  E.gilbertVarshamovBoundSatisfied ∧ E.boundInequality

theorem entropy_bounds_closed_from_evidence (E : EntropyBoundsPackage) (Ev : EntropyBoundsEvidence E) :
    EntropyBoundsClosed E := by
  exact And.intro Ev.gilbertVarshamovClosed Ev.boundInequalityClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse