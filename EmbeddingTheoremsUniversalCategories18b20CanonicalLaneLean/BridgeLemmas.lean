import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

def EmbeddingWitnessClosed (O : EmbeddingAdmittedObject) : Prop :=
  O.fullyFaithful ∧ O.essentialSurjective

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmbeddingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.evidence

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse