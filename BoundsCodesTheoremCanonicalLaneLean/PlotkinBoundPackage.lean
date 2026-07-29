import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure PlotkinBoundPackage (A : AdmissibleClass) where
  plotkinBound : Prop
  maximumDistanceCondition : ℝ
  alphabetSize : ℕ
  plotkinBoundClosed : plotkinBound

def PlotkinBoundClosed {A : AdmissibleClass} (P : PlotkinBoundPackage A) : Prop :=
  P.plotkinBound

theorem plotkin_bound_closed_from_package
    {A : AdmissibleClass} (P : PlotkinBoundPackage A) :
    PlotkinBoundClosed P := by
  exact P.plotkinBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse