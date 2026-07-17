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
  headName : Option Lean.Name := (none : Option Lean.Name)
  typeText : Option String := (none : Option String)
  source : Option SourceSpan := (none : Option SourceSpan)
  children : Array String := (#[] : Array String)
  binderKind : Option BinderKind := (none : Option BinderKind)
  metadata : Array (String × String) := (#[] : Array (String × String))

structure SemanticIR where
  schemaVersion : String := Gloss.schemaVersion
  declarationName : Lean.Name
  declarationKind : String
  root : String
  nodes : Array IRNode
  dependencies : Array (String × String) := (#[] : Array (String × String))
  diagnostics : Array Diagnostic := (#[] : Array Diagnostic)
  provenance : Array (String × String) := (#[] : Array (String × String))

end Gloss
