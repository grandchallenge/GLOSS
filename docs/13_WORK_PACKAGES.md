# 13. Work Packages and Acceptance Contracts

## Dependency graph

```text
WP0 foundation
 -> WP1 extraction spike
 -> WP2 SemanticIR and normalizer
    -> WP3 canonical renderer
    -> WP4 rule registry
    -> WP5 proof tracing
    -> WP6 corpus and annotation
       -> WP7 learned ensemble
       -> WP8 backtranslation and mutations
    -> WP9 benchmark harness
    -> WP10 CLI/API/editor
 -> WP11 hardening
 -> WP12 release and research report
```

WP3, WP5, and WP6 may proceed in parallel only after WP2 contracts freeze. WP7 and WP8 may prototype with provisional data but cannot exit before WP6 and WP9.

## WP0: Doctrine and repository foundation

Deliver pinned toolchain, Lake scaffold, module boundaries, schemas, governance templates, 50 seed fixtures, CI, coding standards, and initial ADRs. Exit when clean setup and package validation work, fixtures are executable, and no unresolved decision blocks WP1.

## WP1: Extraction feasibility spike

Compare imported-environment and elaboration-time/Info-Tree paths. Handle all core expression constructors or explicit opaque fallback, preserve context and selected source spans, and extract at least 100 declarations. Exit with deterministic output, capability matrix, API-volatility assessment, and production recommendation.

## WP2: SemanticIR and normalizer

Implement Lean data types, JSON serialization, node IDs, binder classification, dependency graph, symbol and span tables, logical normalization, opaque fallback, migration harness, and 500 fixtures. Exit when no unresolved metavariables enter accepted artifacts, normalization is idempotent, alpha-renaming tests pass, and canonical JSON is deterministic.

## WP3: Canonical renderer and controlled English

Implement discourse planning, logical templates, typeclass/coercion/name/pronunciation policies, structured RenderingArtifact, alignments, and golden suite. Exit at 99.5 percent weighted material coverage on L0-L1, zero known unreported critical omissions, and 500 reviewed outputs.

## WP4: Rule registry and first 100 constructs

Implement schema, loader, matcher, precedence, linter, candidate mining, promotion workflow, positive/negative fixtures, collision scans, and reviewed constructs. Exit when every rule has provenance and Council review and concision improves without reducing critical coverage.

## WP5: Proof-state tracing and narration

Implement trace capture, state-delta engine, operational/logical narrators, tactic adapters, trace benchmark, and UI data. Exit at 90 percent operational and 80 percent logical correctness with explicit ambiguity handling.

## WP6: Corpus, annotation, and governance

Implement provenance, immutable layers, grouped splits, contamination audits, annotation format and guide, dataset cards, and reproducible manifests. Target 50,000 extracted declarations and 2,000 reviewed samples subject to licensing approval. Exit when provenance and split audits pass and agreement is reported.

## WP7: Learned renderer ensemble

Implement structured baselines, constrained clause planner, alignment supervision, validators, ensemble disagreement, model card, and ablations. Exit when critical-node coverage meets the release threshold, blinded naturalness improves, and deterministic fallback always works.

## WP8: Backtranslation and semantic mutations

Implement English-to-Lean baseline, structural cycle checker, mutation library, equivalence ladder, and report. Exit when compile-only filtering is materially outperformed on semantic metrics and no claim relies on compilation alone.

## WP9: Benchmark and evaluation harness

Implement L0-L7 datasets, hard metrics, statistical protocol, private/public splits, failure browser, executable release gates, and machine-generated reports. Exit after leakage audit and reproducible report generation.

## WP10: CLI, API, and editor

Implement stable command-line and JSON contracts, batch/caching, Lean commands, editor code action and side panel, source-clause navigation, proof narration, configuration, documentation, and accessibility smoke tests. Canonical use must remain local and offline.

## WP11: Hardening

Implement sandboxing, input limits, prompt isolation, performance tuning, compatibility rehearsal, accessibility study, failure injection, SBOM, checksums, and license/security audits. Exit when release blockers close and p95 deterministic latency meets budget or has an approved waiver.

## WP12: Release and research report

Assemble release candidate, benchmark report, compatibility/migration guide, dataset/model cards, reproducibility bundle, technical paper, limitations, and independent clean-room reproduction. Exit when claims map to evidence and the release checklist is signed.

## Master release checklist

### Semantics

- Every artifact identifies source, toolchain, IR, registry, and renderer versions.
- Every critical node is covered, approved-compressed, intentionally elided, or explicitly unrendered.
- Quantifier scope, binder domains, hypotheses, conclusions, negation, and relation direction have dedicated tests.
- Unknown constructs never receive invented meanings.
- Backtranslation reports structural or theorem-level evidence, not compilation alone.

### Engineering

- Clean clone builds with pinned toolchain.
- Schemas and examples validate.
- Per-declaration output is deterministic.
- Batch mode streams with bounded memory.
- Compatibility wrappers isolate unstable Lean APIs.
- Canonical operation needs no network.

### Governance, data, security, and accessibility

- Work-package and Council reviews are complete.
- Critical obligations are closed.
- Corpus license/source provenance is complete.
- Synthetic and human data are separated.
- Sandbox and supply-chain controls are tested.
- Keyboard and screen-reader workflows pass.
- Checksums, SBOM, compatibility report, limitations, and migration guide are published.
