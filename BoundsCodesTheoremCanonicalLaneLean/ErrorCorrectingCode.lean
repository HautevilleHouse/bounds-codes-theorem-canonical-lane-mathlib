import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure ErrorCorrectingCode where
  alphabet : Type u
  length : ℕ
  distance : ℕ
  sizeUpper : ℕ
  sizeLower : ℕ
  singletonBound : Prop
  hammingBound : Prop
  plotkinBound : Prop
  gilbertVarshamovBound : Prop

structure ErrorCorrectingCodeEvidence (C : ErrorCorrectingCode) where
  singletonBoundClosed : C.singletonBound
  hammingBoundClosed : C.hammingBound
  plotkinBoundClosed : C.plotkinBound
  gilbertVarshamovBoundClosed : C.gilbertVarshamovBound

def ErrorCorrectingCodeClosed (C : ErrorCorrectingCode) : Prop :=
  C.singletonBound ∧ C.hammingBound ∧ C.plotkinBound ∧ C.gilbertVarshamovBound

theorem error_correcting_code_closed_from_evidence (C : ErrorCorrectingCode)
    (E : ErrorCorrectingCodeEvidence C) : ErrorCorrectingCodeClosed C := by
  exact And.intro E.singletonBoundClosed
    (And.intro E.hammingBoundClosed
      (And.intro E.plotkinBoundClosed E.gilbertVarshamovBoundClosed))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
