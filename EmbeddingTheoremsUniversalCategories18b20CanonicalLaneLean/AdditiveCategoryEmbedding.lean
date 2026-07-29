import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure AdditiveCategoryEmbeddingPackage where
  smallAdditiveCategory : Type u
  targetAdditivePresheafCategory : Type v
  embeddingFunctor : smallAdditiveCategory â targetAdditivePresheafCategory
  additive : Prop
  faithful : Prop
  full : Prop
  freydTheoremStatement : Prop

structure AdditiveCategoryEmbeddingEvidence (A : AdditiveCategoryEmbeddingPackage) where
  additiveClosed : A.additive
  faithfulClosed : A.faithful
  fullClosed : A.full
  freydTheoremStatementClosed : A.freydTheoremStatement

def AdditiveCategoryEmbeddingClosed (A : AdditiveCategoryEmbeddingPackage) : Prop :=
  A.additive â§ A.faithful â§ A.full â§ A.freydTheoremStatement

theorem additive_category_embedding_closed_from_evidence (A : AdditiveCategoryEmbeddingPackage) (E : AdditiveCategoryEmbeddingEvidence A) :
    AdditiveCategoryEmbeddingClosed A := by
  exact And.intro E.additiveClosed (And.intro E.faithfulClosed (And.intro E.fullClosed E.freydTheoremStatementClosed))

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse