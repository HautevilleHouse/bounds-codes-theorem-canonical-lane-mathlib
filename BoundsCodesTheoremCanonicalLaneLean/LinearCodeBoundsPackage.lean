import BoundsCodesTheoremCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure LinearCodeBoundsPackage where
  fieldSize : ℕ
  length : ℕ
  dimension : ℕ
  minDistance : ℕ
  isLinear : Prop
  hammingBoundSatisfied : Prop
  singletonBoundSatisfied : Prop
  plotkinBoundSatisfied : Prop

structure LinearCodeBoundsEvidence (L : LinearCodeBoundsPackage) where
  isLinearClosed : L.isLinear
  hammingBoundClosed : L.hammingBoundSatisfied
  singletonBoundClosed : L.singletonBoundSatisfied
  plotkinBoundClosed : L.plotkinBoundSatisfied

def LinearCodeBoundsClosed (L : LinearCodeBoundsPackage) : Prop :=
  L.isLinear ∧ L.hammingBoundSatisfied ∧ L.singletonBoundSatisfied ∧ L.plotkinBoundSatisfied

theorem linear_code_bounds_closed_from_evidence (L : LinearCodeBoundsPackage) (E : LinearCodeBoundsEvidence L) :
    LinearCodeBoundsClosed L := by
  exact And.intro E.isLinearClosed (And.intro E.hammingBoundClosed (And.intro E.singletonBoundClosed E.plotkinBoundClosed))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse