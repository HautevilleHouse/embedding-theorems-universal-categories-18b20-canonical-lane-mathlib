import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

def ConstrainedEmbeddingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embedding_endgame (A : AdmissibleClass) : ConstrainedEmbeddingClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse