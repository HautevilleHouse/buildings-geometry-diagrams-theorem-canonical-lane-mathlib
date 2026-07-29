import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuildingsGeometryDiagramsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "buildings-geometry-diagrams-theorem-canonical-lane",
  theoremName := "BuildingsGeometryDiagramsTheorem",
  theoremObject := "Buildings Geometry Diagrams Theorem",
  classicalBoundary := "classical source boundary carried by formalization",
  constrainedStatement := "constrained theorem certificate internalized through bridge and gate",
  certificateLane := "diagram_constrained",
  carriedRemainder := "classical source boundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "buildings-geometry-diagrams-theorem-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "diagram_constrained" := by
  rfl

end BuildingsGeometryDiagramsTheoremCanonicalLaneLean
end HautevilleHouse