import canonicalLaneMathlib.AdmissibleClass
import BuildingsGeometryDiagramsTheoremCanonicalLaneLean.BuildingsGeometryDiagramsAdmissibleObject

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure CoxeterDiagramPackage where
  coxeterMatrix : Type
  coxeterGroup : Type
  irreducibleComponents : List String
  classificationType : String
  diagramAutomorphisms : Prop

structure CoxeterDiagramEvidence (C : CoxeterDiagramPackage) where
  irreducibleComponentsClosed : C.irreducibleComponents ≠ []
  classificationTypeClosed : C.classificationType ∈ ["A","B","C","D","E","F","G","H","I"]

def CoxeterDiagramClosed (C : CoxeterDiagramPackage) : Prop :=
  C.irreducibleComponents ≠ [] ∧
  C.classificationType ∈ ["A","B","C","D","E","F","G","H","I"]

theorem coxeter_diagram_closed_from_evidence (C : CoxeterDiagramPackage) (E : CoxeterDiagramEvidence C) :
    CoxeterDiagramClosed C := by
  exact And.intro E.irreducibleComponentsClosed E.classificationTypeClosed

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse