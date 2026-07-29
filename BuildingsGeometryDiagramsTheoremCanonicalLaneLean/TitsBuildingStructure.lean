import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure TitsBuildingStructure where
  buildingAxiomsSatisfied : Prop
  thickeningDefined : Prop
  retractionDefined : Prop
  buildingAxiomsSatisfiedTerm : buildingAxiomsSatisfied
  thickeningDefinedTerm : thickeningDefined
  retractionDefinedTerm : retractionDefined

structure TitsBuildingStructureEvidence (T : TitsBuildingStructure) where
  buildingAxiomsSatisfiedClosed : T.buildingAxiomsSatisfied
  thickeningDefinedClosed : T.thickeningDefined
  retractionDefinedClosed : T.retractionDefined

def TitsBuildingStructureClosed (T : TitsBuildingStructure) : Prop :=
  T.buildingAxiomsSatisfied ∧ T.thickeningDefined ∧ T.retractionDefined

theorem tits_building_structure_closed_from_evidence
    (T : TitsBuildingStructure) (E : TitsBuildingStructureEvidence T) :
    TitsBuildingStructureClosed T :=
  And.intro E.buildingAxiomsSatisfiedClosed (And.intro E.thickeningDefinedClosed E.retractionDefinedClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse