# 07. Proof-State Tracing and Narration

## Principle

A tactic name describes an operation requested of Lean; it is not necessarily the mathematical explanation. GLOSS records and explains state transitions:

```text
(context_t, goals_t, tactic_syntax_t)
      ->
(context_t+1, goals_t+1, messages_t)
```

## Trace schema

A trace includes declaration and toolchain identity, ordered steps, tactic syntax and source span, before and after goals, local-context changes, substitutions, generated and discharged goals, expression alignments, macro-expansion identity when available, narration candidates, and warnings.

## Delta engine

The engine detects introduced variables and hypotheses, reverted or generalized entries, target transformations, hypothesis rewrites, substitutions, theorem applications and instantiated premises, case splits, induction structure, witnesses, simplification effects, solved goals, and remaining subgoals.

Goal correspondence uses metavariable identity where available and structural similarity otherwise. Ambiguity is recorded.

## Narration levels

- **Operational:** “Apply theorem h to the current goal.”
- **Logical:** “It is enough to prove the two premises required by h.”
- **Mathematical:** “By h, the conclusion follows after continuity and boundedness are established.”

Mathematical narration is permitted only when theorem identity and instantiated premises support it. It may not invent motivation.

## Adapters

Adapters may improve `intro`, `rintro`, `constructor`, `left`, `right`, `apply`, `exact`, `refine`, `use`, `exists`, `rw`, `simp`, `simpa`, `subst`, `cases`, `rcases`, `induction`, `have`, `suffices`, `show`, `change`, arithmetic solvers, `aesop`, and `grind`. Each adapter verifies observed deltas rather than trusting the tactic label.

Automation is described by certified effects and named supporting lemmas when exposed. GLOSS must not pretend to reconstruct an internal human proof that Lean did not provide.

## Granularity

Users can request every tactic, semantically significant steps, grouped proof phases, or a final synopsis. Grouping is a separate pass; the raw trace remains available.

## Acceptance

WP5 requires at least 90 percent correct operational narration and 80 percent correct logical narration on a curated common-tactic benchmark. Mathematical narration remains experimental until separately evaluated.
