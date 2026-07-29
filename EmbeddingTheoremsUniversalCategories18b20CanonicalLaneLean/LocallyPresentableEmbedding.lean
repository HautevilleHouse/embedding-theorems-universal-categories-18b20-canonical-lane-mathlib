import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure LocallyPresentableEmbeddingPackage where
  locallyPresentableCategory : Type u
  targetPresheafCategory : Type v
  embeddingFunctor : locallyPresentableCategory â targetPresheafCategory
  cocomplete : Prop
  denseGenerator : Prop
  faithful : Prop
  full : Prop
  gabrielUlmerStatement : Prop

structure LocallyPresentableEmbeddingEvidence (L : LocallyPresentableEmbeddingPackage) where
  cocompleteClosed : L.cocomplete
  denseGeneratorClosed : L.denseGenerator
  faithfulClosed : L.faithful
  fullClosed : L.full
  gabrielUlmerStatementClosed : L.gabrielUlmerStatement

def LocallyPresentableEmbeddingClosed (L : LocallyPresentableEmbeddingPackage) : Prop :=
  L.cocomplete â§ L.denseGenerator â§ L.faithful â§ L.full â§ L.gabrielUlmerStatement

theorem locally_presentable_embedding_closed_from_evidence (L : LocallyPresentableEmbeddingPackage) (E : LocallyPresentableEmbeddingEvidence L) :
    LocallyPresentableEmbeddingClosed L := by
  exact And.intro E.cocompleteClosed (And.intro E.denseGeneratorClosed (And.intro E.faithfulClosed (And.intro E.fullClosed E.gabrielUlmerStatementClosed)))

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse