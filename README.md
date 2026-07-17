# GLOSS Codex Implementation Package

**Version:** 1.0.0  
**Issued:** 2026-07-16  
**Stable implementation baseline:** Lean/mathlib v4.32.0

This is the complete Grand Challenge Labs specification and kickoff package for GLOSS: Grounded Lean Output with Structural Semantics. It is specification-first. The included Lean project is a deliberately honest scaffold; extraction and canonical rendering return typed unimplemented diagnostics until their work packages are completed.

## Start here

1. Read `docs/00_PRODUCT_CHARTER.md`, `docs/01_SYSTEM_ARCHITECTURE.md`, and `docs/02_TRUST_SEMANTICS_LOSS.md`.
2. Read the work-package graph in `docs/13_WORK_PACKAGES.md`.
3. Assign the Council and create review records from `governance/agent_review.template.yaml`.
4. Give the initiator `prompts/00_CODEX_INITIATOR.md`.
5. Execute WP0 through WP3 sequentially before parallelizing later work.
6. Run `make validate` after every artifact-level change.

## Specifications

- [`docs/00_PRODUCT_CHARTER.md`](docs/00_PRODUCT_CHARTER.md) — 00. Product Charter
- [`docs/01_SYSTEM_ARCHITECTURE.md`](docs/01_SYSTEM_ARCHITECTURE.md) — 01. System Architecture
- [`docs/02_TRUST_SEMANTICS_LOSS.md`](docs/02_TRUST_SEMANTICS_LOSS.md) — 02. Trust, Semantics, and Loss Accounting
- [`docs/03_SEMANTIC_IR.md`](docs/03_SEMANTIC_IR.md) — 03. SemanticIR Specification
- [`docs/04_EXTRACTION_ALIGNMENT.md`](docs/04_EXTRACTION_ALIGNMENT.md) — 04. Extraction, Normalization, and Alignment
- [`docs/05_CANONICAL_ENGLISH.md`](docs/05_CANONICAL_ENGLISH.md) — 05. Canonical Controlled English and Speech
- [`docs/06_RENDERERS_RULES.md`](docs/06_RENDERERS_RULES.md) — 06. Renderer Ensemble and Rule Registry
- [`docs/07_PROOF_NARRATION.md`](docs/07_PROOF_NARRATION.md) — 07. Proof-State Tracing and Narration
- [`docs/08_DATA_BACKTRANSLATION.md`](docs/08_DATA_BACKTRANSLATION.md) — 08. Corpus, Annotation, Learned Training, and Backtranslation
- [`docs/09_EVALUATION_TESTING.md`](docs/09_EVALUATION_TESTING.md) — 09. Evaluation, Benchmark, Testing, and CI
- [`docs/10_INTERFACES_OPERATIONS.md`](docs/10_INTERFACES_OPERATIONS.md) — 10. CLI, API, IDE, Observability, and Operations
- [`docs/11_SECURITY_ACCESSIBILITY_RELEASE.md`](docs/11_SECURITY_ACCESSIBILITY_RELEASE.md) — 11. Security, Privacy, Licensing, Accessibility, and Release
- [`docs/12_GOVERNANCE_RISKS_RESEARCH.md`](docs/12_GOVERNANCE_RISKS_RESEARCH.md) — 12. Agent Council Governance, Risks, and Research Programme
- [`docs/13_WORK_PACKAGES.md`](docs/13_WORK_PACKAGES.md) — 13. Work Packages and Acceptance Contracts
- [`docs/14_REFERENCES.md`](docs/14_REFERENCES.md) — 14. Authoritative References

## Codex prompts

- [`prompts/00_CODEX_INITIATOR.md`](prompts/00_CODEX_INITIATOR.md)
- [`prompts/01_WP0_FOUNDATIONS.md`](prompts/01_WP0_FOUNDATIONS.md)
- [`prompts/02_WP1_EXTRACTOR_SPIKE.md`](prompts/02_WP1_EXTRACTOR_SPIKE.md)
- [`prompts/03_WP2_SEMANTIC_IR.md`](prompts/03_WP2_SEMANTIC_IR.md)
- [`prompts/04_WP3_CANONICAL_RENDERER.md`](prompts/04_WP3_CANONICAL_RENDERER.md)
- [`prompts/05_WP4_RULE_REGISTRY.md`](prompts/05_WP4_RULE_REGISTRY.md)
- [`prompts/06_WP5_PROOF_NARRATION.md`](prompts/06_WP5_PROOF_NARRATION.md)
- [`prompts/07_WP6_CORPUS.md`](prompts/07_WP6_CORPUS.md)
- [`prompts/08_WP7_LEARNED_ENSEMBLE.md`](prompts/08_WP7_LEARNED_ENSEMBLE.md)
- [`prompts/09_WP8_BACKTRANSLATION.md`](prompts/09_WP8_BACKTRANSLATION.md)
- [`prompts/10_WP9_EVALUATION.md`](prompts/10_WP9_EVALUATION.md)
- [`prompts/11_WP10_INTERFACES.md`](prompts/11_WP10_INTERFACES.md)
- [`prompts/12_WP11_HARDENING.md`](prompts/12_WP11_HARDENING.md)
- [`prompts/13_WP12_RELEASE_REPORT.md`](prompts/13_WP12_RELEASE_REPORT.md)
- [`prompts/14_INTEGRATION_COORDINATOR.md`](prompts/14_INTEGRATION_COORDINATOR.md)
- [`prompts/15_ADVERSARIAL_REVIEWER.md`](prompts/15_ADVERSARIAL_REVIEWER.md)
- [`prompts/16_AMANUENSIS.md`](prompts/16_AMANUENSIS.md)
- [`prompts/17_BUG_TRIAGE.md`](prompts/17_BUG_TRIAGE.md)
- [`prompts/18_SECURITY_REVIEW.md`](prompts/18_SECURITY_REVIEW.md)
- [`prompts/19_RESEARCH_REPORTER.md`](prompts/19_RESEARCH_REPORTER.md)

## Package map

- `docs/`: normative product, architecture, semantic, data, evaluation, interface, operations, governance, and research specifications.
- `prompts/`: initiator, per-work-package, integration, adversarial, editorial, triage, security, and reporting prompts.
- `schemas/`: versioned machine-readable contracts.
- `governance/`: Council review, ADR, rule-promotion, PR, and release templates.
- `examples/`: fixtures, rule records, Lean examples, and rendering outputs.
- `scaffold/`: pinned Lean/Lake project with typed fail-closed placeholders.
- `scripts/`: package validation and manifest generation.
- `.github/workflows/`: stable CI and non-gating forward-compatibility lanes.

## Definition of done

The package is implemented only when the required acceptance criteria in each work package have objective evidence, the canonical renderer is total over its declared support envelope, all omissions are represented in the loss report, adversarial semantic mutations are rejected, and all blocking Council obligations are resolved.
