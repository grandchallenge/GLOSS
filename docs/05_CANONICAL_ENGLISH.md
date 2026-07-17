# 05. Canonical Controlled English and Speech

## Purpose

Canonical English is the reference readable form and principal backtranslation pivot. It optimizes for scope, binder domains, logical direction, and compositionality. It should sound like careful mathematical dictation, not raw token substitution.

## Discourse plan

A declaration is realized in zones:

1. type and universe setup when user-relevant;
2. structure and typeclass assumptions;
3. term variables;
4. hypotheses;
5. conclusion or definition body.

For

```lean
{α : Type*} [Group α] (x y : α) (h : x * y = 1) : x = y⁻¹
```

the canonical form is:

> Let alpha be a type equipped with a group structure. Let x and y be elements of alpha. Assume that x times y equals one. Then x equals the inverse of y.

Each clause aligns to binder and proposition node IDs.

## Core templates

- `∀ x : A, P x`: “For every x of type A, P of x.”
- `∃ x : A, P x`: “There exists an x of type A such that P of x.”
- `P → Q`: “If P, then Q.”
- `P ↔ Q`: “P if and only if Q.”
- `P ∧ Q`: “P, and Q.”
- `P ∨ Q`: “P, or Q.”
- `¬ P`: “It is not the case that P.”
- `x = y`: “x equals y.”

Context-sensitive variants such as “Assume P” are allowed when the hypothesis binder remains aligned and scope is preserved.

## Scope and grouping

Discourse precedence is computed independently of Lean pretty-printing precedence. Nested conjunction and disjunction are verbally grouped. Quantifier alternation is never left to prosody:

> For every epsilon greater than zero, there exists a delta greater than zero such that, for every x, ...

## Typeclasses

Known instance binders use reviewed phrases:

- `[Group α]`: “alpha is equipped with a group structure”;
- `[LinearOrder α]`: “alpha is linearly ordered.”

Unknown classes use a qualified fallback. Multiple assumptions cannot be merged unless a rule explicitly certifies the conventional phrase.

## Coercions and implicit arguments

An implicit argument may be suppressed only when uniquely recoverable, approved by policy, represented in the loss record, and incapable of hiding a domain or operation change. Meaning-changing coercions are rendered or annotated.

## Names and pronunciation

A parallel speech record handles Greek letters, primes, subscripts, namespaces, camelCase, snake_case, symbols, generated names, and pause boundaries. Speech verbosity levels are `compact`, `standard`, `expanded`, and `debug`.

Speech mode explicitly disambiguates nested scope, inverse versus exponent minus one, function application versus multiplication, and colliding short names. It supports plain spoken text, pronunciation tokens, and optional SSML.

## Style constraints

Canonical output uses complete sentences, stable terminology, explicit referents, and no ungrounded “obvious,” “clearly,” or “trivially.” It does not invent theorem names or motivations.

## Golden testing

Golden tests compare text, clause boundaries, alignments, coverage, compression, elision, warnings, and faithfulness status. Text equality alone is insufficient.
