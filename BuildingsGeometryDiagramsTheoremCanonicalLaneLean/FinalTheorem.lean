import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

def ConstrainedBuildingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_building_endgame (A : AdmissibleClass) :
    ConstrainedBuildingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse