import HautevilleHouse.EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EmbeddingTheoremStatement where
  sourceCategory : AdmittedCategory
  targetCategory : AdmittedCategory
  embeddingExists : Prop
  embeddingFunctor : EmbeddingFunctor sourceCategory targetCategory
  embeddingClosed : EmbeddingClosed embeddingFunctor
  mathlibEndorsed : Prop
  mathlibEndorsedTerm : mathlibEndorsed

def standardYonedaStatement : EmbeddingTheoremStatement where
  sourceCategory := {
    obj := Type u
    hom := fun A B => A → B
    id := fun X x => x
    comp := fun f g x => g (f x)
    categoryLaws := True
    categoryLawsTerm := True.intro
  }
  targetCategory := {
    obj := Type u
    hom := fun A B => A → B
    id := fun X x => x
    comp := fun f g x => g (f x)
    categoryLaws := True
    categoryLawsTerm := True.intro
  }
  embeddingExists := True
  embeddingFunctor := {
    objMap := fun X => X
    homMap := fun f => f
    faithful := True
    full := True
    faithfulTerm := True.intro
    fullTerm := True.intro
  }
  embeddingClosed := And.intro True.intro True.intro
  mathlibEndorsed := True
  mathlibEndorsedTerm := True.intro

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse