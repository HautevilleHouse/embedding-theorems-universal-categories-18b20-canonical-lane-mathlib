import EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure EmbeddingAdmittedObject where
  sourceCategory : Type u
  targetCategory : Type v
  embeddingFunctor : sourceCategory → targetCategory
  fullyFaithful : Prop
  essentialSurjective : Prop
  isEquivalence : Prop
  evidence : fullyFaithful ∧ essentialSurjective

structure AdmissibleClass where
  object : EmbeddingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EmbeddingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse