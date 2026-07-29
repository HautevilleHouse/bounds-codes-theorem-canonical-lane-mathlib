import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodeConstructionPackage (A : AdmissibleClass) where
  alphabetSize : ℕ
  blockLength : ℕ
  messageSet : Type
  encodingMap : messageSet → (alphabetSize → ℕ)
  minimumDistance : ℕ
  rate : ℚ
  existenceProof : Prop
  constructionWitness : Prop

structure CodeConstructionEvidence (A : AdmissibleClass) (P : CodeConstructionPackage A) where
  existenceProofClosed : P.existenceProof
  constructionWitnessClosed : P.constructionWitness

def CodeConstructionClosed (A : AdmissibleClass) (P : CodeConstructionPackage A) : Prop :=
  P.existenceProof ∧ P.constructionWitness

theorem code_construction_closed_from_evidence (A : AdmissibleClass) (P : CodeConstructionPackage A) (E : CodeConstructionEvidence A P) :
    CodeConstructionClosed A P := by
  exact And.intro E.existenceProofClosed E.constructionWitnessClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse