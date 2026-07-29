import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ChannelCapacityPackage where
  mutualInformation : Type u
  capacityDefined : Prop
  capacityAchievable : Prop
  capacityUpperBound : Prop

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityDefinedClosed : C.capacityDefined
  capacityAchievableClosed : C.capacityAchievable
  capacityUpperBoundClosed : C.capacityUpperBound

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityDefined ∧ C.capacityAchievable ∧ C.capacityUpperBound

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage) (E : ChannelCapacityEvidence C) :
    ChannelCapacityClosed C := by
  exact And.intro E.capacityDefinedClosed
    (And.intro E.capacityAchievableClosed E.capacityUpperBoundClosed)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse