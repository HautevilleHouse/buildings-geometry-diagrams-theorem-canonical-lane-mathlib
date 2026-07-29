import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ConvexityStructure where
  geometry : BuildingGeometry
  convexSet : Type
  isConvex : convexSet → Prop
  convexHull : convexSet → convexSet
  convexHullIdempotent : Prop
  gateProperty : ∀ (A C : convexSet), (∃ x : A, isConvex C ∧ x ∈ C) → (∃ y : A, y ∈ C ∧ ∀ z : A, z ∈ C → isConvex (convexHull {x, z}))

structure ConvexityEvidence (C : ConvexityStructure) where
  convexHullIdempotentClosed : C.convexHullIdempotent
  gatePropertyClosed : C.gateProperty

definition ConvexityClosed (C : ConvexityStructure) : Prop :=
  C.convexHullIdempotent ∧ C.gateProperty

theorem convexity_closed_from_evidence (C : ConvexityStructure) (E : ConvexityEvidence C) : ConvexityClosed C := by
  exact And.intro E.convexHullIdempotentClosed E.gatePropertyClosed

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
