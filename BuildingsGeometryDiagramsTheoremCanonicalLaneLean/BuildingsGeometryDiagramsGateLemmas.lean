import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsAdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse