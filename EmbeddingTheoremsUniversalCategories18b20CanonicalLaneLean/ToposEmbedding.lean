import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure ToposEmbeddingPackage where
  sourceCategory : Type u
  targetTopos : Type v
  embeddingFunctor : sourceCategory â targetTopos
  logicalMorphism : Prop
  faithful : Prop
  full : Prop
  preservesLimits : Prop
  toposEmbeddingTheoremStatement : Prop

structure ToposEmbeddingEvidence (T : ToposEmbeddingPackage) where
  logicalMorphismClosed : T.logicalMorphism
  faithfulClosed : T.faithful
  fullClosed : T.full
  preservesLimitsClosed : T.preservesLimits
  toposEmbeddingTheoremStatementClosed : T.toposEmbeddingTheoremStatement

def ToposEmbeddingClosed (T : ToposEmbeddingPackage) : Prop :=
  T.logicalMorphism â§ T.faithful â§ T.full â§ T.preservesLimits â§ T.toposEmbeddingTheoremStatement

theorem topos_embedding_closed_from_evidence (T : ToposEmbeddingPackage) (E : ToposEmbeddingEvidence T) :
    ToposEmbeddingClosed T := by
  exact And.intro E.logicalMorphismClosed (And.intro E.faithfulClosed (And.intro E.fullClosed (And.intro E.preservesLimitsClosed E.toposEmbeddingTheoremStatementClosed)))

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse