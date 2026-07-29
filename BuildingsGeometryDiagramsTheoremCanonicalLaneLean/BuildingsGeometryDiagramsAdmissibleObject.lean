import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingsSpace where
  appartmentComplex : Type
  chamberSystem : Type
  weylGroup : Type
  buildingAxioms : Prop
  sphericalOrAffine : Prop

structure BuildingsAdmittedObject where
  building : BuildingsSpace
  diagramClassified : Prop
  weylGroupCoxeter : Prop
  sphericalBuilding : Prop
  conclusion : diagramClassified

structure BuildingsEndgameState where
  object : BuildingsAdmittedObject

def BuildingsWitnessOpen (O : BuildingsAdmittedObject) : Prop :=
  O.diagramClassified

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse