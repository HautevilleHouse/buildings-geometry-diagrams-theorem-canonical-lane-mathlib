import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BuildingDiagramsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
