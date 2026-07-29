import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure DiagramCategory where
  objects : Type
  morphisms : objects → objects → Type
  composition : ∀ {A B C : objects}, morphisms A B → morphisms B C → morphisms A C
  identity : ∀ (A : objects), morphisms A A
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop
  diagramConstruction : buildings → objects

structure DiagramReduction where
  category : DiagramCategory
  reductionMap : ∀ (A B : category.objects), category.morphisms A B → (A → B)
  reductionRespectsComposition : Prop

definition DiagramClosed (D : DiagramCategory) : Prop :=
  D.associativity ∧ D.identityLeft ∧ D.identityRight

theorem diagram_closed_from_evidence (D : DiagramCategory) (hAssoc : D.associativity) (hLeft : D.identityLeft) (hRight : D.identityRight) : DiagramClosed D := by
  exact And.intro hAssoc (And.intro hLeft hRight)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
