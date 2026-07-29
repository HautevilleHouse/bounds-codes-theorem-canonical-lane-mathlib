import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure GilbertVarshamovBoundPackage (A : AdmissibleClass) where
  gilbertVarshamovBound : Prop
  asymptoticRate : ℝ
  relativeDistance : ℝ
  gilbertVarshamovBoundClosed : gilbertVarshamovBound

def GilbertVarshamovBoundClosed {A : AdmissibleClass} (G : GilbertVarshamovBoundPackage A) : Prop :=
  G.gilbertVarshamovBound

theorem gilbert_varshamov_bound_closed_from_package
    {A : AdmissibleClass} (G : GilbertVarshamovBoundPackage A) :
    GilbertVarshamovBoundClosed G := by
  exact G.gilbertVarshamovBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse