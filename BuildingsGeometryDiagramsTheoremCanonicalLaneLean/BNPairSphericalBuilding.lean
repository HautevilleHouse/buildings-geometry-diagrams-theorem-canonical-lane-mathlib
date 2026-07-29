import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure BNPairSphericalBuilding where
  bnPairDefined : Prop
  sphericalCondition : Prop
  buildingFromBNPair : Prop
  sphericalConditionTerm : sphericalCondition
  buildingFromBNPairTerm : buildingFromBNPair

structure BNPairSphericalBuildingEvidence (B : BNPairSphericalBuilding) where
  bnPairDefinedClosed : B.bnPairDefined
  sphericalConditionClosed : B.sphericalCondition
  buildingFromBNPairClosed : B.buildingFromBNPair

def BNPairSphericalBuildingClosed (B : BNPairSphericalBuilding) : Prop :=
  B.bnPairDefined ∧ B.sphericalCondition ∧ B.buildingFromBNPair

theorem bn_pair_spherical_building_closed_from_evidence
    (B : BNPairSphericalBuilding) (E : BNPairSphericalBuildingEvidence B) :
    BNPairSphericalBuildingClosed B :=
  And.intro E.bnPairDefinedClosed (And.intro E.sphericalConditionClosed E.buildingFromBNPairClosed)

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse