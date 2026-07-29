import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingGeometry where
  chamberSystem : Type
  adjacency : chamberSystem → chamberSystem → Prop
  thickness : Nat
  rank : Nat
  apartmentStructure : Prop
  weylGroup : Type
  coxeterPresentation : Prop

definition buildingGeometryClosed (B : BuildingGeometry) : Prop :=
  B.apartmentStructure ∧ B.coxeterPresentation

structure ApartmentSystem where
  building : BuildingGeometry
  apartments : Type
  apartmentCoverProperty : Prop
  apartmentIntersectionProperty : Prop
  retractionMap : apartments → (building.chamberSystem → building.chamberSystem)
  retractionIsIdempotent : Prop

definition apartmentSystemClosed (A : ApartmentSystem) : Prop :=
  A.apartmentCoverProperty ∧ A.apartmentIntersectionProperty ∧ A.retractionIsIdempotent

theorem apartment_system_closed_from_evidence (A : ApartmentSystem) (hCover : A.apartmentCoverProperty) (hIntersect : A.apartmentIntersectionProperty) (hRetract : A.retractionIsIdempotent) : apartmentSystemClosed A := by
  exact And.intro hCover (And.intro hIntersect hRetract)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
