import Gloss.IR

namespace Gloss.Render

structure Clause where
  id : String
  text : String
  nodeIds : Array String
  kind : String := "formal"
  deriving Repr, Inhabited

structure LossReport where
  covered : Array String := #[]
  compressed : Array String := #[]
  elided : Array String := #[]
  unrendered : Array String := #[]
  deriving Repr, Inhabited

structure Rendering where
  mode : String := "canonical"
  text : String
  clauses : Array Clause
  loss : LossReport
  diagnostics : Array Gloss.Diagnostic := #[]
  deriving Repr, Inhabited

/-- Fail closed until WP3 implements total canonical rendering over the supported IR. -/
def canonical (ir : Gloss.SemanticIR) : Rendering := {
  text := "[unsupported canonical rendering for " ++ ir.declarationName.toString ++ "]"
  clauses := #[]
  loss := { unrendered := ir.nodes.map (fun node => node.id) }
  diagnostics := #[{
    code := "E300_UNIMPLEMENTED_CANONICAL_RENDERER"
    message := "Canonical rendering is not implemented; all nodes are marked unrendered."
    severity := "error"
  }]
}

end Gloss.Render
