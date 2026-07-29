import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure DecodingErrorExponentPackage where
  randomCodingExponent : Prop
  expurgatedExponent : Prop
  spherePackingExponent : Prop
  straightLineExponent : Prop

structure DecodingErrorExponentEvidence (D : DecodingErrorExponentPackage) where
  randomCodingExponentClosed : D.randomCodingExponent
  expurgatedExponentClosed : D.expurgatedExponent
  spherePackingExponentClosed : D.spherePackingExponent
  straightLineExponentClosed : D.straightLineExponent

def DecodingErrorExponentClosed (D : DecodingErrorExponentPackage) : Prop :=
  D.randomCodingExponent ∧ D.expurgatedExponent ∧ D.spherePackingExponent ∧ D.straightLineExponent

theorem decoding_error_exponent_closed_from_evidence (D : DecodingErrorExponentPackage) (E : DecodingErrorExponentEvidence D) :
    DecodingErrorExponentClosed D := by
  exact And.intro E.randomCodingExponentClosed
    (And.intro E.expurgatedExponentClosed
      (And.intro E.spherePackingExponentClosed E.straightLineExponentClosed))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse