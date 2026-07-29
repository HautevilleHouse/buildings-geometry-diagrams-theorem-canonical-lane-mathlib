import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BuildingRootSystem where
  rootSystemType : String
  rootReflectionGroup : Prop
  weylGroupAction : Prop
  rootReflectionGroupTerm : rootReflectionGroup
  weylGroupActionTerm : weylGroupAction

structure BuildingRootSystemEvidence (R : BuildingRootSystem) where
  rootReflectionGroupClosed : R.rootReflectionGroup
  weylGroupActionClosed : R.weylGroupAction

def BuildingRootSystemClosed (R : BuildingRootSystem) : Prop :=
  R.rootReflectionGroup ∧ R.weylGroupAction

theorem building_root_system_closed_from_evidence
    (R : BuildingRootSystem) (E : BuildingRootSystemEvidence R) :
    BuildingRootSystemClosed R :=
  And.intro E.rootReflectionGroupClosed E.weylGroupActionClosed

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse