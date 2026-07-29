import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.ApartmentSystems

/-!
# Chamber Systems Package
-/

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ChamberSystemsPackage where
  chamberSet : Type
  adjacencyRelation : Prop
  galleryConnected : Prop
  thinCondition : Prop
  thickCondition : Prop

structure ChamberSystemsEvidence (C : ChamberSystemsPackage) where
  adjacencyRelationClosed : C.adjacencyRelation
  galleryConnectedClosed : C.galleryConnected
  thinConditionClosed : C.thinCondition
  thickConditionClosed : C.thickCondition

def ChamberSystemsClosed (C : ChamberSystemsPackage) : Prop :=
  C.adjacencyRelation ∧ C.galleryConnected ∧ C.thinCondition ∧ C.thickCondition

theorem chamber_systems_closed_from_evidence (C : ChamberSystemsPackage) (E : ChamberSystemsEvidence C) :
    ChamberSystemsClosed C := by
  exact And.intro E.adjacencyRelationClosed
    (And.intro E.galleryConnectedClosed
      (And.intro E.thinConditionClosed E.thickConditionClosed))

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
