import Lean
import Gloss.Compat

namespace Gloss

inductive BinderKind where
  | explicit | implicit | strictImplicit | instance
  deriving Repr, Inhabited, BEq

inductive NodeKind where
  | declaration | forallE | existsE | implication | iff | conjunction | disjunction
  | negation | equality | relation | application | lambda | letE | matchE
  | projection | coercion | constant | variable | literal | opaque
  deriving Repr, Inhabited, BEq

structure SourceSpan where
  file : String
  startByte : Nat
  endByte : Nat
  synthetic : Bool := false
  deriving Repr, Inhabited

structure IRNode where
  id : String
  kind : NodeKind
  headName : Option Name := none
  typeText : Option String := none
  source : Option SourceSpan := none
  children : Array String := #[]
  binderKind : Option BinderKind := none
  metadata : Array (String × String) := #[]
  deriving Repr, Inhabited

structure SemanticIR where
  schemaVersion : String := Gloss.schemaVersion
  declarationName : Name
  declarationKind : String
  root : String
  nodes : Array IRNode
  dependencies : Array (String × String) := #[]
  diagnostics : Array Diagnostic := #[]
  provenance : Array (String × String) := #[]
  deriving Repr, Inhabited

end Gloss
