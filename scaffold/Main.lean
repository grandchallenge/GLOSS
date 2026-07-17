import Gloss

open Lean

private def usage : String :=
  "GLOSS scaffold. Run the work-package implementation prompts before expecting extraction."

unsafe def main (args : List String) : IO UInt32 := do
  if args.isEmpty then
    IO.println usage
    pure 0
  else
    IO.eprintln "E100_UNIMPLEMENTED_EXTRACTOR: the packaged scaffold is specification-first."
    pure 2
