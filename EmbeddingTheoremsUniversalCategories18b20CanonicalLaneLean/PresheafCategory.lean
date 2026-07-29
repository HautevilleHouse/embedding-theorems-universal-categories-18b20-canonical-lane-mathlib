import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.YonedaEmbedding

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure PresheafCategoryPackage (C : Type u) [Category.{v} C] where
  presheafCategory : Type (max u v)
  representableFunctors : C → presheafCategory
  yonedaEmbedding : YonedaEmbeddingPackage C
  colimitCompletion : Prop
  colimitCompletionProof : colimitCompletion

structure PresheafCategoryEvidence {C : Type u} [Category.{v} C] (P : PresheafCategoryPackage C) where
  yonedaClosed : YonedaEmbeddingClosed P.yonedaEmbedding
  colimitCompletionClosed : P.colimitCompletion

def PresheafCategoryClosed {C : Type u} [Category.{v} C] (P : PresheafCategoryPackage C) : Prop :=
  YonedaEmbeddingClosed P.yonedaEmbedding ∧ P.colimitCompletion

theorem presheaf_category_closed_from_evidence
  {C : Type u} [Category.{v} C] (P : PresheafCategoryPackage C) (E : PresheafCategoryEvidence P) : PresheafCategoryClosed P :=
  And.intro E.yonedaClosed E.colimitCompletionClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse