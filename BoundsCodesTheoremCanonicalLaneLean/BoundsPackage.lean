import BoundsCodesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure SingletonBound where
  length : ℕ
  dimension : ℕ
  bound : ℕ
  reachable : Prop

structure GreedyBound where
  blockLength : ℕ
  minimumDistance : ℕ
  greedyAchievable : Prop

structure BoundsPackage (S : SingletonBound) (G : GreedyBound) where
  singletonBoundSat : Prop
  greedyBoundSat : Prop
  hammingBound : Prop
  plotkinBound : Prop
  boundsClosed : Prop

structure BoundsEvidence {S : SingletonBound} {G : GreedyBound} (B : BoundsPackage S G) where
  singletonBoundSatClosed : B.singletonBoundSat
  greedyBoundSatClosed : B.greedyBoundSat
  hammingBoundClosed : B.hammingBound
  plotkinBoundClosed : B.plotkinBound
  boundsClosed : B.boundsClosed

def BoundsClosed {S : SingletonBound} {G : GreedyBound} (B : BoundsPackage S G) : Prop :=
  B.singletonBoundSat ∧ B.greedyBoundSat ∧ B.hammingBound ∧ B.plotkinBound ∧ B.boundsClosed

theorem bounds_closed_from_evidence {S : SingletonBound} {G : GreedyBound} (B : BoundsPackage S G) (E : BoundsEvidence B) : BoundsClosed B := by
  exact And.intro E.singletonBoundSatClosed (And.intro E.greedyBoundSatClosed (And.intro E.hammingBoundClosed (And.intro E.plotkinBoundClosed E.boundsClosed)))

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse