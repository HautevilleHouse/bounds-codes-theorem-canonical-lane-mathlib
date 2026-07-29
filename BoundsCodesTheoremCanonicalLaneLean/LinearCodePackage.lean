import BoundsCodesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure LinearCode where
  field : Type u
  dimension : ℕ
  length : ℕ
  generatorMatrix : Type v
  parityCheckMatrix : Type w
  linear : Prop
  minimumDistance : ℕ

structure LinearCodePackage (C : LinearCode) where
  dualCode : LinearCode
  selfOrthogonal : Prop
  mdsCode : Prop
  perfectCode : Prop
  linearCodeBoundsClosed : Prop

structure LinearCodeEvidence {C : LinearCode} (P : LinearCodePackage C) where
  selfOrthogonalClosed : P.selfOrthogonal
  mdsCodeClosed : P.mdsCode
  perfectCodeClosed : P.perfectCode
  linearCodeBoundsClosed : P.linearCodeBoundsClosed

def LinearCodeClosed {C : LinearCode} (P : LinearCodePackage C) : Prop :=
  P.selfOrthogonal ∧ P.mdsCode ∧ P.perfectCode ∧ P.linearCodeBoundsClosed

theorem linear_code_closed_from_evidence {C : LinearCode} (P : LinearCodePackage C) (E : LinearCodeEvidence P) : LinearCodeClosed P := by
  exact And.intro E.selfOrthogonalClosed (And.intro E.mdsCodeClosed (And.intro E.perfectCodeClosed E.linearCodeBoundsClosed))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse