import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure PlotkinBoundPackage where
  codeLength : Nat
  alphabetSize : Nat
  minimumDistance : Nat
  blockLength : Nat
  decodingRadius : Nat
  plotkinInequality : Prop
  upperBound : Prop

structure PlotkinBoundEvidence (P : PlotkinBoundPackage) where
  plotkinInequalityClosed : P.plotkinInequality
  upperBoundClosed : P.upperBound

def PlotkinBoundClosed (P : PlotkinBoundPackage) : Prop :=
  P.plotkinInequality ∧ P.upperBound

theorem plotkin_bound_closed_from_evidence (P : PlotkinBoundPackage)
    (E : PlotkinBoundEvidence P) : PlotkinBoundClosed P := by
  exact And.intro E.plotkinInequalityClosed E.upperBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse