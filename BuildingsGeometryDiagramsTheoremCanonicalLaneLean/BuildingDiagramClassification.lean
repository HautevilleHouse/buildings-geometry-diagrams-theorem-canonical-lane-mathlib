import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingClassificationPackage {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} {C : CoxeterGroupPackage O}
    (CC : ChamberComplexPackage C) where
  sphericalBuilding : Prop
  affineBuilding : Prop
  thickBuilding : Prop
  classificationComplete : Prop

structure BuildingClassificationEvidence {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} {C : CoxeterGroupPackage O}
    {CC : ChamberComplexPackage C}
    (Cl : BuildingClassificationPackage CC) where
  sphericalBuildingClosed : Cl.sphericalBuilding
  affineBuildingClosed : Cl.affineBuilding
  thickBuildingClosed : Cl.thickBuilding
  classificationCompleteClosed : Cl.classificationComplete

def BuildingClassificationClosed {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} {C : CoxeterGroupPackage O}
    {CC : ChamberComplexPackage C}
    (Cl : BuildingClassificationPackage CC) : Prop :=
  Cl.sphericalBuilding ∧ Cl.affineBuilding ∧ Cl.thickBuilding ∧ Cl.classificationComplete

theorem building_classification_closed_from_evidence
    {O : BuildingDiagramObject} {A : ApartmentSystemPackage O}
    {C : CoxeterGroupPackage O} {CC : ChamberComplexPackage C}
    (Cl : BuildingClassificationPackage CC)
    (E : BuildingClassificationEvidence Cl) : BuildingClassificationClosed Cl := by
  exact And.intro E.sphericalBuildingClosed
    (And.intro E.affineBuildingClosed
      (And.intro E.thickBuildingClosed E.classificationCompleteClosed))

theorem building_classification_supplies_diagram_structure
    {O : BuildingDiagramObject} {A : ApartmentSystemPackage O}
    {C : CoxeterGroupPackage O} {CC : ChamberComplexPackage C}
    (Cl : BuildingClassificationPackage CC) : Cl.sphericalBuilding ∨ Cl.affineBuilding :=
  Classical.em Cl.sphericalBuilding

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse