import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.UniversalCategoryEvidence

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

def EmbeddingProofClosed (C : AdmittedCategory) (D : AdmittedCategory) : Prop :=
  ∃ (F : EmbeddingFunctor C D), EmbeddingClosed F

theorem yoneda_proof_closed : EmbeddingProofClosed (ArbitraryCategory) (SetCategory) := by
  refine ⟨standardYonedaEmbedding, ?_⟩
  exact standardYonedaEmbedding.embeddingClosed

theorem freyd_mitchell_proof_closed (A : AbelianCategory) : EmbeddingProofClosed A (RModuleCategory (SomeRing)) := by
  rcases A with ⟨⟩
  refine ⟨freydMitchellEmbedding A, ?_⟩
  exact freydMitchellEmbedding.embeddingClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse