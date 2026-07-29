import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsAdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BuildingsWitnessOpen A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse