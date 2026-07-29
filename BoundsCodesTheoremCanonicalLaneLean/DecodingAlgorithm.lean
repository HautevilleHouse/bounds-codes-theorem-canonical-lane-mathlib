import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure DecodingAlgorithmPackage (A : AdmissibleClass) where
  code : Type
  decodingFunction : code → code
  errorProbability : ℝ
  decodingAlgorithmExists : Prop
  correctionGuarantee : Prop

structure DecodingAlgorithmEvidence (A : AdmissibleClass) (D : DecodingAlgorithmPackage A) where
  decodingAlgorithmExistsClosed : D.decodingAlgorithmExists
  correctionGuaranteeClosed : D.correctionGuarantee

def DecodingAlgorithmClosed (A : AdmissibleClass) (D : DecodingAlgorithmPackage A) : Prop :=
  D.decodingAlgorithmExists ∧ D.correctionGuarantee

theorem decoding_algorithm_closed_from_evidence (A : AdmissibleClass) (D : DecodingAlgorithmPackage A) (E : DecodingAlgorithmEvidence A D) :
    DecodingAlgorithmClosed A D := by
  exact And.intro E.decodingAlgorithmExistsClosed E.correctionGuaranteeClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse