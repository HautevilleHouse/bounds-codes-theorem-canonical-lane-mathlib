import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure AsymptoticBoundsPackage where
  rate : ℝ
  relativeDistance : ℝ
  boundInequality : Prop
  asymptoticFormulation : Prop

structure AsymptoticBoundsEvidence (A : AsymptoticBoundsPackage) where
  boundInequalityClosed : A.boundInequality
  asymptoticFormulationClosed : A.asymptoticFormulation

def AsymptoticBoundsClosed (A : AsymptoticBoundsPackage) : Prop :=
  A.boundInequality ∧ A.asymptoticFormulation

theorem asymptotic_bounds_closed_from_evidence
    (A : AsymptoticBoundsPackage) (E : AsymptoticBoundsEvidence A) :
    AsymptoticBoundsClosed A := by
  exact And.intro E.boundInequalityClosed E.asymptoticFormulationClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse