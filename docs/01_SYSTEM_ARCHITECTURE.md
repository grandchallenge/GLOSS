# 01. System Architecture

## Reference pipeline

```text
Lean source and imported environment
        |
        v
parser / macro expansion / elaboration
        |
        +--> surface Syntax + SourceInfo
        +--> Info Trees + proof-state metadata
        +--> elaborated Expr + Environment
        |
        v
Lean-native extractor
        |
        v
SemanticIR vN
        |
        +--> normalizer and binder dependency analysis
        +--> source and proof-state alignment
        +--> construct matcher and reviewed rule registry
        |
        v
renderer ensemble
        |
        +--> canonical controlled English
        +--> spoken English
        +--> mathematical English
        +--> learned constrained output
        +--> proof narration
        |
        v
RenderingArtifact + provenance + coverage/loss report
        |
        +--> Lean command / CLI / JSONL / HTML
        +--> editor integration
        +--> corpus, benchmark, and backtranslation pipelines
```

Lean Info Trees associate original syntax with elaborated expressions, proof states, completion information, and extensible metadata. SourceInfo distinguishes original and synthetic syntax and retains source positions. GLOSS must use these mechanisms rather than attempting to infer all mappings from pretty-printed expressions.

## Component boundaries

### Lean-native core

The Lean package owns declaration discovery, environment access, Syntax and Info Tree traversal, `Expr` traversal, local-context reconstruction, type inference, configured reduction, semantic normalization, proof trace capture, definitional-equality checks, and canonical serialization.

### External tooling

Python or Rust may own corpus-scale indexing, deterministic renderer mirrors with parity tests, learned inference, benchmark aggregation, reports, annotation tools, dashboards, and service transport. External tools do not parse raw Lean as their semantic authority.

## Deployment profiles

- `embedded`: Lean command or editor request for one declaration;
- `batch`: Lake executable emits JSON or JSONL for modules and manifests;
- `service`: stateless renderer consumes validated IR;
- `research`: corpus extraction, candidate mining, training, and evaluation;
- `offline-accessibility`: deterministic local speech rendering.

## Architectural invariants

- Node IDs are deterministic under the same toolchain, IR version, and normalization profile.
- Canonical output is deterministic under the same IR, configuration, and registry hash.
- Explanatory additions cannot count as covered formal content.
- Elision is policy-driven and serialized.
- Renderer disagreement on a critical node cannot be resolved by majority vote alone.
- Toolchain upgrades require compatibility fixtures and migration reports.
- A model service failure cannot block canonical output.
- Unstable Lean APIs are isolated behind `Gloss.Compat`.

## Technology baseline

Use Lean 4 and Lake for the formal core, JSON Schema 2020-12 for interchange contracts, JSONL for streaming corpora, YAML for reviewed rules and governance, Python 3.12+ for research tooling, SQLite or DuckDB for local indexes, and Parquet for large immutable analytical tables.

The implementation baseline is Lean and mathlib `v4.32.0`. `v4.33.0-rc1` is a forward-compatibility target only until a stable release is explicitly adopted.
