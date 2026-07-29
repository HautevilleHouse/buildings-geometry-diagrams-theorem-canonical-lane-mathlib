import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingDiagramObject where
  rootSystem : Type u
  coxeterMatrix : Type v
  chamber : Type w
  galleries : Type x
  apartment : Type y
  buildingDimension : Prop
  coxeterGroupDefined : Prop
  chamberSystemConnected : Prop
  apartmentAxiom : Prop
  buildingDimensionTerm : buildingDimension
  coxeterGroupDefinedTerm : coxeterGroupDefined
  chamberSystemConnectedTerm : chamberSystemConnected
  apartmentAxiomTerm : apartmentAxiom

structure AdmittedBuildingObject where
  obj : BuildingDiagramObject
  conclusion : obj.buildingDimension ∧ obj.coxeterGroupDefined ∧ obj.chamberSystemConnected ∧ obj.apartmentAxiom

def BuildingWitnessClosed (O : AdmittedBuildingObject) : Prop :=
  O.conclusion

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse