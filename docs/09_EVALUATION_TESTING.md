# 09. Evaluation, Benchmark, Testing, and CI

## Benchmark matrix

Evaluate across declaration complexity, logical form, dependent typing, mathematical domain, notation density, typeclass complexity, coercions, proof style, source availability, and rendering mode.

Levels:

- `L0`: core terms and logical forms;
- `L1`: elementary theorem statements;
- `L2`: common Mathlib constructs;
- `L3`: structures, instances, coercions, and subtypes;
- `L4`: recursive definitions, matches, and programs;
- `L5`: tactic-state transitions;
- `L6`: grouped proof narratives;
- `L7`: declaration families and file summaries.

## Hard semantic metrics

Report critical-node recall separately from weighted coverage; binder domain accuracy; quantifier order and scope; hypothesis and conclusion preservation; relation and operator identity/direction; negation and modality; alignment validity; unexplained-node rate; and false explanatory additions.

Text quality is measured separately through grammaticality, pronounceability, conventional style, concision, coherence, pedagogical usefulness, and auditory ambiguity. Embedding similarity is diagnostic only.

## Mutation benchmark

Each gold item has semantically close negatives. A system must distinguish them and identify the changed dimension. Report results by mutation class, not only as an aggregate.

## Test pyramid

### Unit

Expression classification, binder dependency, normalization, rule matching, discourse planning, pronunciation, serializers, coverage validators, and proof delta operations.

### Golden

Canonical IR, text, alignments, and loss records for curated Lean declarations.

### Property

Alpha-renaming invariance; formatting invariance; dependency-respecting reorder; serialization round-trip; no missing critical node without a record; normalization idempotence; deterministic output.

### Integration

Lake project extraction, Mathlib imports, CLI pipelines, editor requests, model fallback, and schema migration.

### Differential

Compare imported and elaboration-time paths, old and new compatibility adapters, parallel and serial output, and pre/post-rule outputs.

### Mutation

Semantic mutations must trigger expected failures. Code mutation testing is encouraged for polarity, relation, and scope validators.

## CI

Blocking jobs: format/lint, Lean build and tests, Python tests and typing, schema validation, deterministic rerun, documentation/example validation, manifest check, and license/header scan.

Nightly jobs: larger Mathlib sample, next release candidate, performance, corpus drift, rule collisions, and learned evaluation when configured.

Golden changes require an explicit update command, generated diff report, rationale, and review.

## Acceptance gates

### Alpha

500 L0-L1 fixtures, deterministic extraction/rendering, zero known undetected critical omissions in canonical mode, stable schemas, and batch CLI.

### Beta

5,000 curated statement fixtures, 100 promoted constructs, editor prototype, operational proof narration, public benchmark report, and one toolchain-upgrade compatibility report.

### 1.0

At least 99.9 percent canonical critical-node recall on the private conformance set, zero unaccounted critical loss in release blockers, latency within budget, accessibility and license audits, reproducible release bundle, and model/dataset cards for learned components.

## Statistical protocol

Report confidence intervals for sampled human judgments and bootstrap intervals for corpus metrics. Declare best-of-N decoding. Preserve failures, abstentions, and excluded cases in denominators and error reports.
