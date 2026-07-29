import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure BoundingFunction where
  domain : Type u
  codomain : Type v
  linearCombination : Bool
  positiveScalars : Bool
  closureUnderAddition : Prop
  closureUnderScalar : Prop
  supremumBound : Prop

structure BoundingFunctionEvidence (F : BoundingFunction) where
  closureUnderAdditionClosed : F.closureUnderAddition
  closureUnderScalarClosed : F.closureUnderScalar
  supremumBoundClosed : F.supremumBound

def BoundingFunctionClosed (F : BoundingFunction) : Prop :=
  F.closureUnderAddition ∧ F.closureUnderScalar ∧ F.supremumBound

theorem bounding_function_closed_from_evidence (F : BoundingFunction)
    (E : BoundingFunctionEvidence F) : BoundingFunctionClosed F := by
  exact And.intro E.closureUnderAdditionClosed
    (And.intro E.closureUnderScalarClosed E.supremumBoundClosed)

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
