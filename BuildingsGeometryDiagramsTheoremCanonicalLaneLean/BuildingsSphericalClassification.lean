import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsAdmissibleObject

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure SphericalBuildingsPackage where
  buildingType : String
  rank : Nat
  oppositionRelation : Prop
  selfOppositeClassification : Prop
  moufangProperty : Prop

structure SphericalBuildingsEvidence (S : SphericalBuildingsPackage) where
  buildingTypeClosed : S.buildingType ∈ ["A_n","B_n","C_n","D_n","E_6","E_7","E_8","F_4","G_2"]
  rankClosed : S.rank ≥ 2
  moufangPropertyClosed : S.moufangProperty

def SphericalBuildingsClosed (S : SphericalBuildingsPackage) : Prop :=
  S.buildingType ∈ ["A_n","B_n","C_n","D_n","E_6","E_7","E_8","F_4","G_2"] ∧
  S.rank ≥ 2 ∧
  S.moufangProperty

theorem spherical_buildings_closed_from_evidence (S : SphericalBuildingsPackage) (E : SphericalBuildingsEvidence S) :
    SphericalBuildingsClosed S := by
  exact And.intro E.buildingTypeClosed (And.intro E.rankClosed E.moufangPropertyClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse