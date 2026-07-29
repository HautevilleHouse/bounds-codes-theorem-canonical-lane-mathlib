import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure LinearProgram where
  variables : ℕ
  constraints : Type
  objective : Type
  d : ℕ
  n : ℕ

def DelsarteLinearProgram (n : ℕ) (d : ℕ) (q : ℕ) : LinearProgram :=
  { variables := n + 1, constraints := (), objective := (), d := d, n := n }

structure LPBoundPackage (C : CodingParameters) where
  lp : LinearProgram
  optimumValue : ℕ
  bound : C.messageLength ≤ optimumValue
  lpClosed : Prop
  boundClosed : bound

structure LPBoundEvidence {C : CodingParameters} (L : LPBoundPackage C) where
  lpClosed : L.lpClosed
  boundClosed : L.boundClosed

def LPBoundClosed {C : CodingParameters} (L : LPBoundPackage C) : Prop :=
  L.lpClosed ∧ L.boundClosed

theorem lp_bound_closed_from_evidence {C : CodingParameters} (L : LPBoundPackage C) (E : LPBoundEvidence L) :
    LPBoundClosed L := by
  exact And.intro E.lpClosed E.boundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse