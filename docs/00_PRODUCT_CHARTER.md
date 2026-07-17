# 00. Product Charter

## Mission

GLOSS, **Grounded Lean Output with Structural Semantics**, is a semantics-grounded Lean-to-English compiler, proof narrator, corpus system, and research programme. It converts Lean declarations, terms, definitions, and proof-state transitions into controlled or natural mathematical English while preserving a machine-auditable account of what formal content was rendered, compressed, inferred, intentionally omitted, or left unsupported.

The product does not replace Lean and does not treat English as a proof certificate. Lean determines the formal object. GLOSS determines how that object may be read.

## Primary users

The first product serves Lean learners, mathematicians reviewing formal statements, formalization teams producing documentation, accessibility users consuming Lean through speech or screen readers, and researchers studying formal-to-natural translation and backtranslation.

## Rendering modes

GLOSS exposes explicit modes rather than one allegedly universal translation:

- `canonical`: controlled English with maximal structural fidelity;
- `spoken`: pronunciation-oriented output for audio and screen readers;
- `mathematical`: conventional mathematical prose with declared compression;
- `pedagogical`: explanation with optional definitions and discourse scaffolding;
- `summary`: intentionally lossy synopsis with a loss budget;
- `trace-operational`: what tactic action occurred;
- `trace-logical`: how the proof state changed;
- `trace-mathematical`: higher-level explanation grounded in verified state deltas.

## Product doctrine

1. The elaborated Lean term and environment are the semantic authority.
2. Source syntax remains important for notation, names, comments, and alignment.
3. Every renderer consumes the same versioned SemanticIR.
4. Every output clause aligns to formal nodes or is marked explanatory.
5. Loss is explicit, typed, measurable, and reviewable.
6. Unknown constructs use a compositional or opaque fallback; they are never guessed.
7. Learned systems propose prose and rules but cannot promote themselves or overwrite canonical output.
8. Canonical local operation requires no network or model service.
9. Compilation is not semantic equivalence.
10. Proof narration is based on proof-state transitions, not tactic names alone.

## Non-goals for V1

V1 does not promise publication-quality prose for all Mathlib, perfect recovery of arbitrary English into Lean, complete support for all user-defined syntax, or human-level reconstruction of proof motivation. It does not allow fluent output to conceal unsupported nodes.

## Success criteria

The programme succeeds when a user can select a declaration and obtain readable English whose formal coverage can be inspected clause by clause; when quantifier, hypothesis, polarity, domain, and relation errors are caught automatically; and when deterministic, rule-based, and learned renderers can evolve independently without weakening the trust boundary.
