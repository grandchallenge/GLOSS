# 03. SemanticIR Specification

## Purpose

SemanticIR is a typed, versioned, language-neutral graph for deterministic rendering, learned rendering, proof narration, source alignment, corpus extraction, and semantic comparison. It is not a raw `Lean.Expr` dump. It normalizes formal structure into discourse-relevant nodes while retaining an opaque escape hatch.

## Envelope

Every artifact includes schema and normalization versions; Lean, mathlib, extractor, and project identities; source repository, commit, module, file, declaration, and hash; declaration metadata; root node; node, binder, symbol, and source-span tables; normalization events; diagnostics; and optional proof-trace references.

## Core node vocabulary

`sort`, `constant`, `variable`, `literal`, `application`, `lambda`, `forall`, `exists`, `let`, `match`, `implication`, `iff`, `and`, `or`, `not`, `equality`, `relation`, `membership`, `subset`, `tuple`, `structure`, `projection`, `constructor`, `coercion`, `type_ascription`, `annotation`, and `opaque_lean_expr`.

Dependent products are classified for discourse as universal quantification, implication, ordinary function type, dependent function type, instance assumption, or unresolved product. The original expression identity remains available.

## Binder records

A binder records stable ID, display and original names, explicitness, type node, dependency IDs, scope node, semantic role, source spans, and any implicitness explanation. Semantic roles include type parameter, structure assumption, term variable, hypothesis, index, proof-irrelevant argument, and unknown.

Binder reordering is permitted only if it respects the transitive dependency partial order, quantifier polarity, implication boundaries, and explicit no-reorder constraints.

## Symbol records

Symbols are identified by fully qualified Lean name, never suffix matching. Records include short name, declaration kind, module, type fingerprint, notation evidence, matching rule IDs, and relevant transparency metadata.

## Node identity

Node IDs are deterministic within an IR major version and normalization profile. Hash inputs include node kind, normalized head identity, child IDs, binder depth, and relevant type identity. Source offsets are excluded where possible so formatting-only edits can preserve IDs. Collisions are resolved deterministically.

## Normalization profiles

- `surface_preserving`: retains source-visible organization and notation anchors;
- `logical_core`: recognizes standard logical constants and product classes;
- `mathematical_standard`: applies reviewed constructs and benign compression;
- `backtranslation_strict`: minimizes irreversible normalization.

Every rewrite records rule ID, before and after nodes, and justification: definitional, theorem-supported, or presentational. Normalization must terminate and be idempotent.

## Opaque fallback

Unsupported expressions become `opaque_lean_expr` nodes carrying pretty-printed text, inferred type, free variables, source span, reason code, and serializer version. Opaque nodes are material by default. Renderers may quote or spell them but cannot guess meaning.

## Migration policy

Major schema changes require migration code or documented re-extraction. Minor versions add optional compatible fields. Patch versions clarify validation. Corpus records include schema hash and producer commit.

## Performance targets

After module build, aim for median extraction below 25 ms for simple declarations and p95 below 150 ms for ordinary theorem statements. Batch extraction must stream with bounded memory. Correctness precedes performance until WP2 exits; later regressions above 20 percent require review.
