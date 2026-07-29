import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodeBoundsPackage where
  initialBoundedness : Prop
  lengthDimensionBound : Prop
  entropyPerSymbolBound : Prop
  errorExponentBound : Prop
  blocklengthN : Nat

structure CodeBoundsEvidence (C : CodeBoundsPackage) where
  initialBoundednessClosed : C.initialBoundedness
  lengthDimensionBoundClosed : C.lengthDimensionBound
  entropyPerSymbolBoundClosed : C.entropyPerSymbolBound
  errorExponentBoundClosed : C.errorExponentBound

def CodeBoundsClosed (C : CodeBoundsPackage) : Prop :=
  C.initialBoundedness ∧ C.lengthDimensionBound ∧ C.entropyPerSymbolBound ∧ C.errorExponentBound

theorem code_bounds_closed_from_evidence (C : CodeBoundsPackage) (E : CodeBoundsEvidence C) :
    CodeBoundsClosed C := by
  exact And.intro E.initialBoundednessClosed
    (And.intro E.lengthDimensionBoundClosed
      (And.intro E.entropyPerSymbolBoundClosed E.errorExponentBoundClosed))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse