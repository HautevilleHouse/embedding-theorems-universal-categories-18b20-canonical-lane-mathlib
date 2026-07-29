import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.PresheafCategory

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure UniversalEmbeddingPropertyPackage (C : Type u) [Category.{v} C] where
  presheafCategoryPackage : PresheafCategoryPackage C
  universalProperty : Prop
  witness : universalProperty
  universalPropertyStatement : String

structure UniversalEmbeddingPropertyEvidence {C : Type u} [Category.{v} C] (U : UniversalEmbeddingPropertyPackage C) where
  presheafCategoryClosed : PresheafCategoryClosed U.presheafCategoryPackage
  universalPropertyClosed : U.universalProperty

def UniversalEmbeddingPropertyClosed {C : Type u} [Category.{v} C] (U : UniversalEmbeddingPropertyPackage C) : Prop :=
  PresheafCategoryClosed U.presheafCategoryPackage ∧ U.universalProperty

theorem universal_embedding_property_closed_from_evidence
  {C : Type u} [Category.{v} C] (U : UniversalEmbeddingPropertyPackage C) (E : UniversalEmbeddingPropertyEvidence U) : UniversalEmbeddingPropertyClosed U :=
  And.intro E.presheafCategoryClosed E.universalPropertyClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse