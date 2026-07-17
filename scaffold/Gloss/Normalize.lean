import Gloss.IR

namespace Gloss

structure NormalizationPolicy where
  exposeCoercions : Bool := false
  exposeInstanceArguments : Bool := false
  reduceLetBindings : Bool := true
  unfoldNames : Array String := #[]
  deriving Repr, Inhabited

/-- Identity normalization until WP2 supplies semantics-preserving passes and invariants. -/
def normalize (ir : SemanticIR) (_policy : NormalizationPolicy := {}) : SemanticIR := ir

end Gloss
