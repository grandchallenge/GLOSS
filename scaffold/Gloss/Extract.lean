import Lean
import Gloss.IR

namespace Gloss
open Lean Meta Elab Command

/--
Extract a declaration into SemanticIR.

This scaffold intentionally returns `E100_UNIMPLEMENTED_EXTRACTOR`; it is not a fake
extractor. WP1 must implement environment lookup, expression traversal, source/InfoTree
alignment, stable node identity, binder dependency analysis, and typed fallbacks.
-/
def extractDeclaration (env : Environment) (declName : Name) : MetaM (Except Diagnostic SemanticIR) := do
  let _ := env
  pure <| .error {
    code := "E100_UNIMPLEMENTED_EXTRACTOR"
    message := s!"Semantic extraction is not implemented for {declName}. Execute WP1."
    severity := "error"
  }

end Gloss
