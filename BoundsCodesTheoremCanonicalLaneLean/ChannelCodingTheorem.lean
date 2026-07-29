import BoundsCodesTheoremCanonicalLaneLean.BoundsCodesMainProof

/-!
# Channel Coding Theorem Package
-/

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ChannelCodingPackage where
  channelModel : Prop
  encodingScheme : Prop
  decodingScheme : Prop
  errorProbability : Prop
  capacityAchievability : Prop

structure ChannelCodingEvidence (C : ChannelCodingPackage) where
  channelModelClosed : C.channelModel
  encodingSchemeClosed : C.encodingScheme
  decodingSchemeClosed : C.decodingScheme
  errorProbabilityClosed : C.errorProbability
  capacityAchievabilityClosed : C.capacityAchievability

def ChannelCodingClosed (C : ChannelCodingPackage) : Prop :=
  C.channelModel ∧ C.encodingScheme ∧ C.decodingScheme ∧
  C.errorProbability ∧ C.capacityAchievability

theorem channel_coding_closed_from_evidence
    (C : ChannelCodingPackage) (E : ChannelCodingEvidence C) :
    ChannelCodingClosed C := by
  exact And.intro E.channelModelClosed
    (And.intro E.encodingSchemeClosed
      (And.intro E.decodingSchemeClosed
        (And.intro E.errorProbabilityClosed
          E.capacityAchievabilityClosed)))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
