import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ChamberSystemBruhatOrder where
  bruhatOrderDefined : Prop
  galleryConnected : Prop
  positivity : Prop
  bruhatOrderDefinedTerm : bruhatOrderDefined
  galleryConnectedTerm : galleryConnected
  positivityTerm : positivity

structure ChamberSystemBruhatOrderEvidence (O : ChamberSystemBruhatOrder) where
  bruhatOrderDefinedClosed : O.bruhatOrderDefined
  galleryConnectedClosed : O.galleryConnected
  positivityClosed : O.positivity

def ChamberSystemBruhatOrderClosed (O : ChamberSystemBruhatOrder) : Prop :=
  O.bruhatOrderDefined ∧ O.galleryConnected ∧ O.positivity

theorem chamber_system_bruhat_order_closed_from_evidence
    (O : ChamberSystemBruhatOrder) (E : ChamberSystemBruhatOrderEvidence O) :
    ChamberSystemBruhatOrderClosed O :=
  And.intro E.bruhatOrderDefinedClosed (And.intro E.galleryConnectedClosed E.positivityClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse