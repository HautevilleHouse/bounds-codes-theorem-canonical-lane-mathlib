import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodingTheoryAdmissiblePackage (A : AdmissibleClass) where
  codeFamily : Type
  asymptoticRate : ℝ
  asymptoticRelativeDistance : ℝ
  existenceOfGoodCodes : Prop
  nonConstructiveBound : Prop

structure CodingTheoryAdmissibleEvidence (A : AdmissibleClass) (C : CodingTheoryAdmissiblePackage A) where
  existenceOfGoodCodesClosed : C.existenceOfGoodCodes
  nonConstructiveBoundClosed : C.nonConstructiveBound

def CodingTheoryAdmissibleClosed (A : AdmissibleClass) (C : CodingTheoryAdmissiblePackage A) : Prop :=
  C.existenceOfGoodCodes ∧ C.nonConstructiveBound

theorem coding_theory_admissible_closed_from_evidence (A : AdmissibleClass) (C : CodingTheoryAdmissiblePackage A) (E : CodingTheoryAdmissibleEvidence A C) :
    CodingTheoryAdmissibleClosed A C := by
  exact And.intro E.existenceOfGoodCodesClosed E.nonConstructiveBoundClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse