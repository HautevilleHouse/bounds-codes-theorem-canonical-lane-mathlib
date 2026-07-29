import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure SpherePackingBoundPackage where
  codeLength : Nat
  alphabetSize : Nat
  blockLength : Nat
  decodingRadius : Nat
  sphereVolume : Nat
  sphereVolumePositive : sphereVolume > 0
  hammingBound : Prop
  spherePackingBound : Prop

structure SpherePackingBoundEvidence (P : SpherePackingBoundPackage) where
  hammingBoundClosed : P.hammingBound
  spherePackingBoundClosed : P.spherePackingBound

def SpherePackingBoundClosed (P : SpherePackingBoundPackage) : Prop :=
  P.hammingBound ∧ P.spherePackingBound

theorem sphere_packing_bound_closed_from_evidence (P : SpherePackingBoundPackage)
    (E : SpherePackingBoundEvidence P) : SpherePackingBoundClosed P := by
  exact And.intro E.hammingBoundClosed E.spherePackingBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse