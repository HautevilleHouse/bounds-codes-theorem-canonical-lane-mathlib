import BoundsCodesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BoundsCodesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BoundsCodesAdmittedObject where
  space : BoundsCodesSpace
  boundType : Prop
  codeConstruction : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  boundConverges : Prop
  conclusion : boundConverges

structure BoundsCodesEndgameState where
  object : BoundsCodesAdmittedObject

def BoundsCodesWitnessClosed (O : BoundsCodesAdmittedObject) : Prop :=
  O.boundConverges

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse
