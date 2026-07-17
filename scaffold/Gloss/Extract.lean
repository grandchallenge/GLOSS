import Lean
import Gloss.IR

namespace Gloss

/--
Extract a declaration into SemanticIR.

This scaffold intentionally returns `E100_UNIMPLEMENTED_EXTRACTOR`; it is not a fake
extractor. WP1 must implement environment lookup, expression traversal, source/InfoTree
alignment, stable node identity, binder dependency analysis, and typed fallbacks.
-/
def extractDeclaration
    (env : Lean.Environment)
    (declName : Lean.Name) : Lean.MetaM (Except Gloss.Diagnostic Gloss.SemanticIR) := do
  let _ := env
  pure <| .error {
    code := "E100_UNIMPLEMENTED_EXTRACTOR"
    message := s!"Semantic extraction is not implemented for {declName}. Execute WP1."
    severity := "error"
  }

end Gloss
