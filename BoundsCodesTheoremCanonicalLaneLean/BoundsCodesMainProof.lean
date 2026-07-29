import BoundsCodesTheoremCanonicalLaneLean.BoundsCodesMathlibObjects
import BoundsCodesTheoremCanonicalLaneLean.BridgeLemmas
import BoundsCodesTheoremCanonicalLaneLean.GateLemmas

/-!
# Bounds Codes Main Proof Package
-/

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure BoundsCodesProofPackage where
  codingTheorem : Prop
  shannonBound : Prop
  hammingBound : Prop
  gilbertVarshamovBound : Prop
  spherePackingBound : Prop
  asymptoticBound : Prop

structure BoundsCodesProofEvidence (P : BoundsCodesProofPackage) where
  codingTheoremClosed : P.codingTheorem
  shannonBoundClosed : P.shannonBound
  hammingBoundClosed : P.hammingBound
  gilbertVarshamovBoundClosed : P.gilbertVarshamovBound
  spherePackingBoundClosed : P.spherePackingBound
  asymptoticBoundClosed : P.asymptoticBound

def BoundsCodesProofClosed (P : BoundsCodesProofPackage) : Prop :=
  P.codingTheorem ∧ P.shannonBound ∧ P.hammingBound ∧
  P.gilbertVarshamovBound ∧ P.spherePackingBound ∧ P.asymptoticBound

theorem bounds_codes_proof_closed_from_evidence
    (P : BoundsCodesProofPackage) (E : BoundsCodesProofEvidence P) :
    BoundsCodesProofClosed P := by
  exact And.intro E.codingTheoremClosed
    (And.intro E.shannonBoundClosed
      (And.intro E.hammingBoundClosed
        (And.intro E.gilbertVarshamovBoundClosed
          (And.intro E.spherePackingBoundClosed
            E.asymptoticBoundClosed))))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
