import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure SingletonBoundPackage where
  codeLength : Nat
  alphabetSize : Nat
  minimumDistance : Nat
  blockLength : Nat
  decodingRadius : Nat
  singletonInequality : Prop
  maximumCodeSize : Prop

structure SingletonBoundEvidence (P : SingletonBoundPackage) where
  singletonInequalityClosed : P.singletonInequality
  maximumCodeSizeClosed : P.maximumCodeSize

def SingletonBoundClosed (P : SingletonBoundPackage) : Prop :=
  P.singletonInequality ∧ P.maximumCodeSize

theorem singleton_bound_closed_from_evidence (P : SingletonBoundPackage)
    (E : SingletonBoundEvidence P) : SingletonBoundClosed P := by
  exact And.intro E.singletonInequalityClosed E.maximumCodeSizeClosed

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse