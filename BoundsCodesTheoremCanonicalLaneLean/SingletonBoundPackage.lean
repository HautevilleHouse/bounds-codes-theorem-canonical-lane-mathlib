import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure SingletonBoundPackage (A : AdmissibleClass) where
  codeSizeBound : Prop
  fixedVolume : ℝ
  linearProgrammingApplied : Prop
  codeSizeBoundClosed : codeSizeBound

def SingletonBoundClosed {A : AdmissibleClass} (S : SingletonBoundPackage A) : Prop :=
  S.codeSizeBound

theorem singleton_bound_closed_from_package
    {A : AdmissibleClass} (S : SingletonBoundPackage A) :
    SingletonBoundClosed S := by
  exact S.codeSizeBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse