import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ChannelCapacityPackage (A : AdmissibleClass) where
  channelModel : Type
  inputAlphabet : Type
  outputAlphabet : Type
  transitionProbabilities : inputAlphabet → outputAlphabet → ℝ
  capacityValue : ℝ
  capacityTheorem : Prop
  achievabilityProof : Prop
  converseProof : Prop

structure ChannelCapacityEvidence (A : AdmissibleClass) (C : ChannelCapacityPackage A) where
  capacityTheoremClosed : C.capacityTheorem
  achievabilityProofClosed : C.achievabilityProof
  converseProofClosed : C.converseProof

def ChannelCapacityClosed (A : AdmissibleClass) (C : ChannelCapacityPackage A) : Prop :=
  C.capacityTheorem ∧ C.achievabilityProof ∧ C.converseProof

theorem channel_capacity_closed_from_evidence (A : AdmissibleClass) (C : ChannelCapacityPackage A) (E : ChannelCapacityEvidence A C) :
    ChannelCapacityClosed A C := by
  exact And.intro E.capacityTheoremClosed (And.intro E.achievabilityProofClosed E.converseProofClosed)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse