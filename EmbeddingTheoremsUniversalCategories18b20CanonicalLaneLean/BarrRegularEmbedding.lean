import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure BarrRegularEmbeddingPackage where
  regularCategory : Type u
  targetSetValuedFunctorCategory : Type v
  embeddingFunctor : regularCategory â targetSetValuedFunctorCategory
  regularEpimorphismPreserving : Prop
  faithful : Prop
  full : Prop
  exactnessProperties : Prop
  barrTheoremStatement : Prop

structure BarrRegularEmbeddingEvidence (B : BarrRegularEmbeddingPackage) where
  regularEpimorphismPreservingClosed : B.regularEpimorphismPreserving
  faithfulClosed : B.faithful
  fullClosed : B.full
  exactnessPropertiesClosed : B.exactnessProperties
  barrTheoremStatementClosed : B.barrTheoremStatement

def BarrRegularEmbeddingClosed (B : BarrRegularEmbeddingPackage) : Prop :=
  B.regularEpimorphismPreserving â§ B.faithful â§ B.full â§ B.exactnessProperties â§ B.barrTheoremStatement

theorem barr_regular_embedding_closed_from_evidence (B : BarrRegularEmbeddingPackage) (E : BarrRegularEmbeddingEvidence B) :
    BarrRegularEmbeddingClosed B := by
  exact And.intro E.regularEpimorphismPreservingClosed (And.intro E.faithfulClosed (And.intro E.fullClosed (And.intro E.exactnessPropertiesClosed E.barrTheoremStatementClosed)))

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse