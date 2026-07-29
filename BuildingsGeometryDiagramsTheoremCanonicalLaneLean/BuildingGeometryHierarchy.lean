import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure ChamberComplex where
  chambers : Type
  adjacency : chambers → chambers → Prop
  galleryConnected : Prop

structure BuildingAxioms (C : ChamberComplex) where
  type : Type
  rank : Nat
  apartmentSystem : Set (Set C.chambers)
  apartmentAxiom : ∀ A ∈ apartmentSystem, IsApartment A
  transitiveOnApartments : Prop

structure IsApartment (A : Set (ChamberComplex.chambers)) : Prop where
  typeIsWeyl : Prop
  finiteRank : Prop
  stronglyTransitive : Prop

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse
