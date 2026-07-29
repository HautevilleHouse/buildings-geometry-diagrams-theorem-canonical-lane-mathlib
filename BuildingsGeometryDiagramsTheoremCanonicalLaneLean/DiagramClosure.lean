import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingGeometryHierarchy

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure DiagramClosurePackage where
  diagramFamily : Type
  source : Type
  target : Type
  closureProperty : Prop
  universalProperty : Prop

structure DiagramClosureEvidence (D : DiagramClosurePackage) where
  closurePropertyClosed : D.closureProperty
  universalPropertyClosed : D.universalProperty

def DiagramClosureClosed (D : DiagramClosurePackage) : Prop :=
  D.closureProperty ∧ D.universalProperty

theorem diagram_closure_closed_from_evidence
    (D : DiagramClosurePackage) (E : DiagramClosureEvidence D) :
    DiagramClosureClosed D := by
  exact And.intro E.closurePropertyClosed E.universalPropertyClosed

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
