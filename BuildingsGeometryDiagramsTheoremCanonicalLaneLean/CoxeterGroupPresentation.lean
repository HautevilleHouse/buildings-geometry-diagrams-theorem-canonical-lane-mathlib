import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure CoxeterGroupPresentation where
  coxeterMatrix : Type
  presentationDefined : Prop
  braidRelationsHold : Prop
  dihedralSubgroupsClassified : Prop
  presentationDefinedTerm : presentationDefined
  braidRelationsHoldTerm : braidRelationsHold
  dihedralSubgroupsClassifiedTerm : dihedralSubgroupsClassified

structure CoxeterGroupPresentationEvidence (C : CoxeterGroupPresentation) where
  presentationDefinedClosed : C.presentationDefined
  braidRelationsHoldClosed : C.braidRelationsHold
  dihedralSubgroupsClassifiedClosed : C.dihedralSubgroupsClassified

def CoxeterGroupPresentationClosed (C : CoxeterGroupPresentation) : Prop :=
  C.presentationDefined ∧ C.braidRelationsHold ∧ C.dihedralSubgroupsClassified

theorem coxeter_group_presentation_closed_from_evidence
    (C : CoxeterGroupPresentation) (E : CoxeterGroupPresentationEvidence C) :
    CoxeterGroupPresentationClosed C :=
  And.intro E.presentationDefinedClosed (And.intro E.braidRelationsHoldClosed E.dihedralSubgroupsClassifiedClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse