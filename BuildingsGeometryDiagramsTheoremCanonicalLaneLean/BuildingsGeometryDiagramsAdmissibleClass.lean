import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsAdmissibleObject

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BuildingsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BuildingsWitnessOpen A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse