# 02. Trust, Semantics, and Loss Accounting

## Semantic authority

For declaration `d`, let `S(d)` be source syntax, `E(d)` the elaborated declaration and environment, `N(E(d))` the normalized SemanticIR, and `R_i(N(E(d)))` a rendering. `E(d)` is authoritative. `S(d)` preserves presentation evidence. Renderings are interpretations outside the trusted computing base.

## Faithfulness statuses

- `exact_structural`: all material semantics realized without compression;
- `equivalent_conventional`: conventional phrase used with no known semantic loss;
- `loss_accounted`: material content intentionally omitted or summarized and listed;
- `partial`: material content is unrendered or uncertain;
- `unsafe_unverified`: learned output has not passed required validation.

A renderer cannot self-assign a status stronger than its policy and validators permit.

## Node importance

- `critical`: quantifiers, binder domains, hypotheses, conclusions, connectives, negation, relation direction, dependent scope;
- `material`: function heads, operators, meaning-changing coercions, structure assumptions, uniqueness, modality, cardinality;
- `presentational`: binder spelling, namespace abbreviation, notation choice, redundant grouping;
- `implementation`: generated auxiliaries and inferred details not relevant under the selected mode.

Importance classes are reviewed policy, not per-output model judgments.

## Loss model

For graph `G=(V,E)` and rendering `y`, classify nodes into covered `C`, compressed `K`, intentionally elided `L`, and unrendered `U`. Report exact coverage, effective coverage, and unaccounted loss separately.

```text
exact_coverage = weight(C) / weight(material nodes)
effective_coverage = weight(C union K) / weight(material nodes)
unaccounted_loss = weight(U) / weight(material nodes)
```

Compression is not the same as exact realization. A concise mathematical sentence can be excellent while still carrying a declared compression record.

## Explanatory additions

Pedagogical content is tagged as `definition_expansion`, `background_fact`, `example`, `motivation`, `discourse_connector`, or `model_inference`. Only discourse connectors may be omitted from visible provenance by default. Mathematical additions require rule, source, or model provenance and cannot count as formal coverage.

## Equivalence ladder for backtranslation

For original proposition `P` and reconstructed proposition `Q`, report the strongest achieved level:

1. syntax parses;
2. elaboration succeeds;
3. normalized IRs are isomorphic up to alpha-renaming;
4. Lean establishes definitional equality where applicable;
5. Lean proves both implications or `P ↔ Q`;
6. expert human adjudication.

Compilation alone is never reported as semantic success.

## Failure posture

When uncertain, retain the qualified constant or expression, use a compositional or opaque rendering, mark the artifact partial, and emit a structured diagnostic. Familiar-sounding terminology must not be invented from contextual plausibility.
