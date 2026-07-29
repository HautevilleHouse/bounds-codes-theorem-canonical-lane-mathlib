import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure HammingBoundPackage (C : CodingParameters) where
  spherePacking : Prop
  errorCorrectionCapability : ℕ
  boundSat : spherePacking ∧ errorCorrectionCapability ≤ C.blockLength

structure HammingBoundEvidence {C : CodingParameters} (H : HammingBoundPackage C) where
  spherePackingClosed : H.spherePacking
  errorCapClosed : H.errorCorrectionCapability ≤ C.blockLength

def HammingBoundClosed {C : CodingParameters} (H : HammingBoundPackage C) : Prop :=
  H.spherePacking ∧ H.errorCorrectionCapability ≤ C.blockLength

theorem hamming_bound_closed_from_evidence {C : CodingParameters} (H : HammingBoundPackage C) (E : HammingBoundEvidence H) :
    HammingBoundClosed H := by
  exact And.intro E.spherePackingClosed E.errorCapClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse