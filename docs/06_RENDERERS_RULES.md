# 06. Renderer Ensemble and Rule Registry

## Renderer contract

Every backend implements:

```text
render(ir, configuration, rule_registry) -> RenderingArtifact
```

The artifact contains text, clause structure, node alignments, covered/compressed/elided/unrendered records, warnings, disagreement data, latency, and provenance. Production renderers cannot return plain text alone.

## Required renderers

- **Canonical structural renderer:** deterministic reference output.
- **Surface-aware renderer:** preserves author notation, names, and organization.
- **Mathematical renderer:** uses registered constructs and declared compression.
- **Accessibility renderer:** expands symbols and auditory scope.
- **Learned constrained renderer:** paraphrases an IR and canonical draft within a structured output contract.
- **Adversarial literal renderer:** maximally explicit output for diagnostics.

Canonical output is always retained. Learned output is eligible only after schema, alignment, polarity, relation, and critical-node checks. A fluent candidate cannot replace the canonical artifact.

## Ensemble disagreement

Disagreement is localized by node and dimension, for example relation direction, quantifier type, domain, or omitted hypothesis. Critical disagreement causes rejection or a prominent warning. Majority voting does not override a hard semantic invariant.

## Learned decoding

Preferred procedure:

1. generate a clause plan with required node sets;
2. realize clauses;
3. derive alignment and coverage deterministically;
4. run semantic validators;
5. repair only identified defects while retaining the original and repair trace.

The model cannot assert its own coverage.

## Rule registry

Rule classes are `lexical`, `structural`, `construct`, `compression`, `pronunciation`, `normalization`, and `proof_narration`. Every promoted rule includes stable ID and version, qualified semantic match, typed slots, preconditions, renderings, loss policy, positive fixtures, near-miss negatives, provenance, compatibility range, reviews, and deprecation metadata.

Rules match elaborated identities and graph structure, not raw source strings. Priority is exact qualified pattern, stricter domain pattern, generic construct, lexical rule, then compositional fallback. Unresolved ties are errors.

## Promotion workflow

1. Mine or propose candidate.
2. Record examples, semantic stability, and compression benefit.
3. Generate adversarial near misses.
4. Define controlled and conventional phrases.
5. Verify match conditions.
6. Run fixture, collision, and corpus regressions.
7. Record Council review and unresolved obligations.
8. Steward promotes, rejects, or retains experimental status.

A model may assist with proposal and evidence gathering but cannot promote a rule.

## Candidate mining

Mine normalized IR subgraphs using structural clustering or anti-unification. Rank candidates by frequency, semantic stability, documentation support, compression benefit, domain value, and ambiguity cost. High-frequency implementation wrappers are not automatically useful concepts.

## Initial construct tranche

Prioritize injective/surjective/bijective, inverses, monotonicity, boundedness, maxima/minima, existence and uniqueness, closure, homomorphism laws, set extensional forms, convergence, Cauchy, continuity, divisibility, coprimality, equivalence relations, finiteness, nonemptiness, and stable universal-property patterns.

## Caching and latency

Cache keys include IR hash, renderer and registry versions, locale, mode, and configuration; learned caches also include model and decoding hashes. Target canonical p95 below 100 ms after IR availability and all deterministic modes below 250 ms.
