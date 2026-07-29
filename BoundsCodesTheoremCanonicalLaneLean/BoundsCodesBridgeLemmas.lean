import BoundsCodesTheoremCanonicalLaneLean.BoundsCodesAdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

def BoundsWitnessClosed (O : BoundsAdmittedObject) : Prop :=
  O.codeExists

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BoundsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse