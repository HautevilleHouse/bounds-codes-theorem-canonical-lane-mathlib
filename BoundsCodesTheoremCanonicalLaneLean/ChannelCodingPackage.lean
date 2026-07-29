import BoundsCodesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ChannelModel where
  inputAlphabet : Type u
  outputAlphabet : Type v
  transitionMatrix : Type w
  discreteMemoryless : Prop
  channelCapacity : Prop

structure ChannelCodingPackage (C : ChannelModel) where
  blockLength : ℕ
  codeSize : ℕ
  errorProbability : ℝ
  achievable : Prop
  codingTheoremClosed : Prop

structure ChannelCodingEvidence {C : ChannelModel} (P : ChannelCodingPackage C) where
  achievableClosed : P.achievable
  codingTheoremClosed : P.codingTheoremClosed

def ChannelCodingClosed {C : ChannelModel} (P : ChannelCodingPackage C) : Prop :=
  P.achievable ∧ P.codingTheoremClosed

theorem channel_coding_closed_from_evidence {C : ChannelModel} (P : ChannelCodingPackage C) (E : ChannelCodingEvidence P) : ChannelCodingClosed P := by
  exact And.intro E.achievableClosed E.codingTheoremClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse