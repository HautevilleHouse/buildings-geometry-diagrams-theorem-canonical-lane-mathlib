import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def buildingProjection : Projection BuildingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem building_projection_idempotent (x : BuildingEndgameState) :
    buildingProjection.toFun (buildingProjection.toFun x) = buildingProjection.toFun x := by
  exact buildingProjection.idempotent x

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
