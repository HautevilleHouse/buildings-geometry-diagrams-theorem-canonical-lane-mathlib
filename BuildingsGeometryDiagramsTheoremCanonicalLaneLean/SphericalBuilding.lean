import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingGeometryHierarchy

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure SphericalBuilding extends BuildingAxioms (ChamberComplex.mk) where
  sphericalWeylGroup : Type
  isFiniteWeyl : Prop
  oppositionInvolution : Prop

structure SphericalBuildingEvidence (S : SphericalBuilding) where
  isFiniteWeylClosed : S.isFiniteWeyl
  oppositionInvolutionClosed : S.oppositionInvolution

def SphericalBuildingClosed (S : SphericalBuilding) : Prop :=
  S.isFiniteWeyl ∧ S.oppositionInvolution

theorem spherical_building_closed_from_evidence
    (S : SphericalBuilding) (E : SphericalBuildingEvidence S) :
    SphericalBuildingClosed S := by
  exact And.intro E.isFiniteWeylClosed E.oppositionInvolutionClosed

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
