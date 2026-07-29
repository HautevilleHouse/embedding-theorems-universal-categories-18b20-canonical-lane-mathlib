import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.MathlibStatement

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure YonedaEmbeddingEvidence where
  yonedaLemma : Prop
  embeddingFullFaithful : Prop
  yonedaLemmaTerm : yonedaLemma
  embeddingFullFaithfulTerm : embeddingFullFaithful

def YonedaEvidenceClosed (E : YonedaEmbeddingEvidence) : Prop :=
  E.yonedaLemma ∧ E.embeddingFullFaithful

theorem yoneda_evidence_closed (E : YonedaEmbeddingEvidence) : YonedaEvidenceClosed E := by
  exact And.intro E.yonedaLemmaTerm E.embeddingFullFaithfulTerm

structure FreydMitchellEmbeddingEvidence where
  exactnessPreserved : Prop
  fullyFaithfulEmbedding : Prop
  exactnessPreservedTerm : exactnessPreserved
  fullyFaithfulEmbeddingTerm : fullyFaithfulEmbedding

def FreydMitchellEvidenceClosed (E : FreydMitchellEmbeddingEvidence) : Prop :=
  E.exactnessPreserved ∧ E.fullyFaithfulEmbedding

theorem freyd_mitchell_evidence_closed (E : FreydMitchellEmbeddingEvidence) : FreydMitchellEvidenceClosed E := by
  exact And.intro E.exactnessPreservedTerm E.fullyFaithfulEmbeddingTerm

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse