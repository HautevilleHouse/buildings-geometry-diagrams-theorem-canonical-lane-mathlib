import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ChamberComplexPackage {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} (C : CoxeterGroupPackage O) where
  chamberGraph : Type u
  galleriesHomotopy : Type v
  fundamentalChamber : Prop
  chamberTransitivity : Prop
  gatedProperty : Prop

structure ChamberComplexEvidence {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} {C : CoxeterGroupPackage O}
    (CC : ChamberComplexPackage C) where
  fundamentalChamberClosed : CC.fundamentalChamber
  chamberTransitivityClosed : CC.chamberTransitivity
  gatedPropertyClosed : CC.gatedProperty

def ChamberComplexClosed {O : BuildingDiagramObject}
    {A : ApartmentSystemPackage O} {C : CoxeterGroupPackage O}
    (CC : ChamberComplexPackage C) : Prop :=
  CC.fundamentalChamber ∧ CC.chamberTransitivity ∧ CC.gatedProperty

theorem chamber_complex_closed_from_evidence
    {O : BuildingDiagramObject} {A : ApartmentSystemPackage O}
    {C : CoxeterGroupPackage O} (CC : ChamberComplexPackage C)
    (E : ChamberComplexEvidence CC) : ChamberComplexClosed CC := by
  exact And.intro E.fundamentalChamberClosed
    (And.intro E.chamberTransitivityClosed E.gatedPropertyClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse