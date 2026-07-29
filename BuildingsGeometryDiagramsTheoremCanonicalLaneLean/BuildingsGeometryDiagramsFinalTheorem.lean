import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsBridgeLemmas
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsGateLemmas

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

def ConstrainedBuildingsGeometryDiagramsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_buildings_geometry_diagrams_endgame (A : AdmissibleClass) :
    ConstrainedBuildingsGeometryDiagramsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse