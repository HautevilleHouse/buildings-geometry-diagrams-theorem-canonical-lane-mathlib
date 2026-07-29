import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ApartmentSystemPackage (O : BuildingDiagramObject) where
  apartmentEmbeddings : Type u
  retractionMaps : Type v
  intersectionProperties : Prop
  retractionComposition : Prop
  apartmentAxiomRealized : Prop

structure ApartmentSystemEvidence {O : BuildingDiagramObject}
    (A : ApartmentSystemPackage O) where
  intersectionPropertiesClosed : A.intersectionProperties
  retractionCompositionClosed : A.retractionComposition
  apartmentAxiomRealizedClosed : A.apartmentAxiomRealized

def ApartmentSystemClosed {O : BuildingDiagramObject}
    (A : ApartmentSystemPackage O) : Prop :=
  A.intersectionProperties ∧ A.retractionComposition ∧ A.apartmentAxiomRealized

theorem apartment_system_closed_from_evidence
    {O : BuildingDiagramObject} (A : ApartmentSystemPackage O)
    (E : ApartmentSystemEvidence A) : ApartmentSystemClosed A := by
  exact And.intro E.intersectionPropertiesClosed
    (And.intro E.retractionCompositionClosed E.apartmentAxiomRealizedClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse