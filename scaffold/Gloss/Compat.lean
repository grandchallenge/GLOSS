namespace Gloss

/-- Versions are part of every serialized artifact and must change under incompatible evolution. -/
def schemaVersion : String := "1.0.0"
def packageVersion : String := "0.1.0"
def supportedLeanVersion : String := "v4.32.0"

structure Diagnostic where
  code : String
  message : String
  severity : String := "error"
  nodeId : Option String := none
  deriving Repr, Inhabited

end Gloss
