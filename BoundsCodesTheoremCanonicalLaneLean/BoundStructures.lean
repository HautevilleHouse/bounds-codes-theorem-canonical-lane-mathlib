import BoundsCodesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodeParameters where
  n : ℕ
  M : ℕ
  d : ℕ
  q : ℕ
  parametersSatisfy : Prop

structure BoundsPackage (C : CodeParameters) where
  boundName : String
  boundStatement : Prop
  boundEvidence : Prop

structure BoundsEvidence {C : CodeParameters} (B : BoundsPackage C) where
  boundStatementClosed : B.boundStatement
  boundEvidenceClosed : B.boundEvidence

def BoundsClosed {C : CodeParameters} (B : BoundsPackage C) : Prop :=
  B.boundStatement ∧ B.boundEvidence

theorem bounds_closed_from_evidence {C : CodeParameters} (B : BoundsPackage C) (E : BoundsEvidence B) :
    BoundsClosed B := by
  exact And.intro E.boundStatementClosed E.boundEvidenceClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse