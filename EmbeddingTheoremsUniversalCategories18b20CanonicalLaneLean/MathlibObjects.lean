import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean

structure AdmittedCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : ∀ X : obj, hom X X
  comp : ∀ {X Y Z : obj}, hom X Y → hom Y Z → hom X Z
  categoryLaws : Prop
  categoryLawsTerm : categoryLaws

structure EmbeddingFunctor (C D : AdmittedCategory) where
  objMap : C.obj → D.obj
  homMap : ∀ {X Y : C.obj}, C.hom X Y → D.hom (objMap X) (objMap Y)
  faithful : Prop
  full : Prop
  faithfulTerm : faithful
  fullTerm : full

def EmbeddingClosed (F : EmbeddingFunctor C D) : Prop :=
  F.faithful ∧ F.full

theorem embedding_closed_from_evidence (F : EmbeddingFunctor C D) (hfaith : F.faithful) (hfull : F.full) : EmbeddingClosed F := by
  exact And.intro hfaith hfull

end EmbeddingTheoremsUniversalCategories18b20CanonicalLaneLean
end HautevilleHouse