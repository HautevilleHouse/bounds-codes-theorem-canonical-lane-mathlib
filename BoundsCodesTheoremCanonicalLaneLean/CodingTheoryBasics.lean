import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundsCodesTheoremCanonicalLaneLean

structure CodingParameters where
  blockLength : ℕ
  messageLength : ℕ
  fieldSize : ℕ
  primalFieldSize : ℕ
  alphabetSize : ℕ

def SingletonBound (n : ℕ) (k : ℕ) : ℕ := n - k + 1

def GriesmerBound (n : ℕ) (k : ℕ) (d : ℕ) : ℕ :=
  let rec sum (i : ℕ) : ℕ := if i < k then sum (i + 1) + (d / 2 ^ i) else 0
  in sum 0

structure LinearCode where
  params : CodingParameters
  generatorMatrix : Type
  parityCheckMatrix : Type
  minimumDistance : ℕ
  griesmerSat : minimumDistance ≤ GriesmerBound params.blockLength params.messageLength minimumDistance

end BoundsCodesTheoremCanonicalLaneLean
end HautevilleHouse