import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure UniversalPropertyEmbeddingPackage where
  category : Type u
  smallCategory : CategoryStruct category
  embeddingIntoCompleteCategory : Functor category (CompleteCategory Type u)
  universalProperty : ∀ (F : Functor category (CompleteCategory Type u)),
    ∃! extension : Functor (CompleteCategory Type u) (CompleteCategory Type u),
      (extension.comp embeddingIntoCompleteCategory) = F
  embeddingFullFaithful : embeddingIntoCompleteCategory.Full ∧ embeddingIntoCompleteCategory.Faithful

structure UniversalPropertyEvidence (U : UniversalPropertyEmbeddingPackage) where
  universalPropertyClosed : U.universalProperty
  embeddingFullFaithfulClosed : U.embeddingFullFaithful

def UniversalPropertyClosed (U : UniversalPropertyEmbeddingPackage) : Prop :=
  U.universalProperty ∧ U.embeddingFullFaithful

theorem universal_property_closed_from_evidence (U : UniversalPropertyEmbeddingPackage) (E : UniversalPropertyEvidence U) :
    UniversalPropertyClosed U := by
  exact And.intro E.universalPropertyClosed E.embeddingFullFaithfulClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse