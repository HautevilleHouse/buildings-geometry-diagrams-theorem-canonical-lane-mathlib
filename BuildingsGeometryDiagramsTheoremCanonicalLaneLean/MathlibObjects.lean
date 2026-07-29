import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BuildingDiagram where
  source : BuildingSpace
  target : BuildingSpace
  diagramMorphism : carrier source → carrier target
  commutesWithStructure : Prop

structure AdmittedObject where
  space : BuildingSpace
  diagram : BuildingDiagram
  isBuildingDiagram : Prop
  conclusion : isBuildingDiagram

def BuildingDiagramsWitnessClosed (O : AdmittedObject) : Prop :=
  O.isBuildingDiagram

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
