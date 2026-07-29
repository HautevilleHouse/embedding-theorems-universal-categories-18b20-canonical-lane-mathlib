import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse