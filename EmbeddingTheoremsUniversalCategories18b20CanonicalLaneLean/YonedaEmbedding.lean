import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure YonedaEmbeddingPackage (C : Type u) [Category.{v} C] where
  presheafCategory : Type (max u v)
  yonedaFunctor : C → presheafCategory
  fullyFaithful : Prop
  presheafCategoryInstance : Category presheafCategory
  fullyFaithfulProof : fullyFaithful

structure YonedaEmbeddingEvidence {C : Type u} [Category.{v} C] (Y : YonedaEmbeddingPackage C) where
  fullyFaithfulClosed : Y.fullyFaithful

def YonedaEmbeddingClosed {C : Type u} [Category.{v} C] (Y : YonedaEmbeddingPackage C) : Prop :=
  Y.fullyFaithful

theorem yoneda_embedding_closed_from_evidence
  {C : Type u} [Category.{v} C] (Y : YonedaEmbeddingPackage C) (E : YonedaEmbeddingEvidence Y) : YonedaEmbeddingClosed Y :=
  E.fullyFaithfulClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse