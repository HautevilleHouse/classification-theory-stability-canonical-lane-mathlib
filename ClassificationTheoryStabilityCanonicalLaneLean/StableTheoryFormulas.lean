import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassificationTheoryStabilityCanonicalLaneLean

structure StableTheoryFormula where
  sorts : Type u
  relations : List (Nat × String)
  functions : List (Nat × String)
  axioms : List String

structure TypeDefinableSet (M : StableTheoryFormula) where
  sortIndex : Nat
  formula : String
  parameters : List (M.sorts)

end ClassificationTheoryStabilityCanonicalLaneLean
end HautevilleHouse