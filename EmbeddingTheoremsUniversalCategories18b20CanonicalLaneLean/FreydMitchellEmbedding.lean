import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure FreydMitchellEmbeddingPackage where
  abelianCategory : Type u
  smallAbelianCategory : Abelian abelianCategory
  moduleCategory : ModuleCat (Type u)
  embeddingFunctor : Functor abelianCategory moduleCategory
  fullFaithful : embeddingFunctor.Full ∧ embeddingFunctor.Faithful
  exactnessPreserved : embeddingFunctor.Exact

structure FreydMitchellEvidence (P : FreydMitchellEmbeddingPackage) where
  fullFaithfulClosed : P.fullFaithful
  exactnessPreservedClosed : P.exactnessPreserved

def FreydMitchellClosed (P : FreydMitchellEmbeddingPackage) : Prop :=
  P.fullFaithful ∧ P.exactnessPreserved

theorem freyd_mitchell_closed_from_evidence (P : FreydMitchellEmbeddingPackage) (E : FreydMitchellEvidence P) :
    FreydMitchellClosed P := by
  exact And.intro E.fullFaithfulClosed E.exactnessPreservedClosed

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse