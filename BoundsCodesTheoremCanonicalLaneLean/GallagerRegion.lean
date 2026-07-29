import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure GallagerRegionPackage where
  regionParameters : Type u
  reliableRateRegion : Prop
  achievabilityProof : Prop
  converseBound : Prop

structure GallagerRegionEvidence (G : GallagerRegionPackage) where
  reliableRateRegionClosed : G.reliableRateRegion
  achievabilityProofClosed : G.achievabilityProof
  converseBoundClosed : G.converseBound

def GallagerRegionClosed (G : GallagerRegionPackage) : Prop :=
  G.reliableRateRegion ∧ G.achievabilityProof ∧ G.converseBound

theorem gallager_region_closed_from_evidence (G : GallagerRegionPackage) (E : GallagerRegionEvidence G) :
    GallagerRegionClosed G := by
  exact And.intro E.reliableRateRegionClosed
    (And.intro E.achievabilityProofClosed E.converseBoundClosed)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse