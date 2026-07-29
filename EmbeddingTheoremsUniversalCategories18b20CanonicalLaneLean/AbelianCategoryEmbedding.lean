import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure AbelianCategoryEmbeddingPackage where
  smallAbelianCategory : Type u
  targetModuleCategory : Type v
  embeddingFunctor : smallAbelianCategory â targetModuleCategory
  additive : Prop
  exact : Prop
  faithful : Prop
  full : Prop
  mitchellTheoremStatement : Prop

structure AbelianCategoryEmbeddingEvidence (A : AbelianCategoryEmbeddingPackage) where
  additiveClosed : A.additive
  exactClosed : A.exact
  faithfulClosed : A.faithful
  fullClosed : A.full
  mitchellTheoremStatementClosed : A.mitchellTheoremStatement

def AbelianCategoryEmbeddingClosed (A : AbelianCategoryEmbeddingPackage) : Prop :=
  A.additive â§ A.exact â§ A.faithful â§ A.full â§ A.mitchellTheoremStatement

theorem abelian_category_embedding_closed_from_evidence (A : AbelianCategoryEmbeddingPackage) (E : AbelianCategoryEmbeddingEvidence A) :
    AbelianCategoryEmbeddingClosed A := by
  exact And.intro E.additiveClosed (And.intro E.exactClosed (And.intro E.faithfulClosed (And.intro E.fullClosed E.mitchellTheoremStatementClosed)))

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse