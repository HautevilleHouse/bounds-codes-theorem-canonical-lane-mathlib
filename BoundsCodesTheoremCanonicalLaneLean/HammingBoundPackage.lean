import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure HammingBoundPackage (A : AdmissibleClass) where
  spherePackingBound : Prop
  sphereVolume : ℕ → ℝ
  spherePackingBoundClosed : spherePackingBound

def HammingBoundClosed {A : AdmissibleClass} (H : HammingBoundPackage A) : Prop :=
  H.spherePackingBound

theorem hamming_bound_closed_from_package
    {A : AdmissibleClass} (H : HammingBoundPackage A) :
    HammingBoundClosed H := by
  exact H.spherePackingBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse