# GLOSS: Grounded Lean Output with Structural Semantics

## Grand Challenge Labs Codex Implementation Specification

Version 1.0.0; issued 2026-07-16; stable baseline Lean/mathlib v4.32.0.

This repository uses split, reviewable specifications as the normative source. This master index defines the reading order and maps the complete implementation package. It intentionally avoids duplicating the split files, so changes are reviewed once and cannot silently diverge between a compiled monolith and its authoritative sources.

## Normative specification sequence

1. [`docs/00_PRODUCT_CHARTER.md`](docs/00_PRODUCT_CHARTER.md) — mission, users, modes, doctrine, non-goals, and success criteria.
2. [`docs/01_SYSTEM_ARCHITECTURE.md`](docs/01_SYSTEM_ARCHITECTURE.md) — extraction-to-rendering architecture, boundaries, invariants, and deployment profiles.
3. [`docs/02_TRUST_SEMANTICS_LOSS.md`](docs/02_TRUST_SEMANTICS_LOSS.md) — semantic authority, faithfulness statuses, loss accounting, equivalence ladder, and failure posture.
4. [`docs/03_SEMANTIC_IR.md`](docs/03_SEMANTIC_IR.md) — versioned semantic intermediate representation and compatibility policy.
5. [`docs/04_EXTRACTION_ALIGNMENT.md`](docs/04_EXTRACTION_ALIGNMENT.md) — Lean-native extraction, normalization, source alignment, and binder dependency analysis.
6. [`docs/05_CANONICAL_ENGLISH.md`](docs/05_CANONICAL_ENGLISH.md) — deterministic controlled English and speech rendering.
7. [`docs/06_RENDERERS_RULES.md`](docs/06_RENDERERS_RULES.md) — renderer ensemble, reviewed construct registry, and rule promotion.
8. [`docs/07_PROOF_NARRATION.md`](docs/07_PROOF_NARRATION.md) — proof-state tracing and operational, logical, and mathematical narration.
9. [`docs/08_DATA_BACKTRANSLATION.md`](docs/08_DATA_BACKTRANSLATION.md) — corpus construction, annotation, learned rendering, semantic mutation, and backtranslation.
10. [`docs/09_EVALUATION_TESTING.md`](docs/09_EVALUATION_TESTING.md) — benchmark ladder, formal and linguistic metrics, testing, and CI gates.
11. [`docs/10_INTERFACES_OPERATIONS.md`](docs/10_INTERFACES_OPERATIONS.md) — Lean commands, CLI, API, IDE integration, observability, and operations.
12. [`docs/11_SECURITY_ACCESSIBILITY_RELEASE.md`](docs/11_SECURITY_ACCESSIBILITY_RELEASE.md) — security, privacy, licensing, accessibility, and release engineering.
13. [`docs/12_GOVERNANCE_RISKS_RESEARCH.md`](docs/12_GOVERNANCE_RISKS_RESEARCH.md) — Agent Council governance, programme risks, and research claims.
14. [`docs/13_WORK_PACKAGES.md`](docs/13_WORK_PACKAGES.md) — WP0–WP12 dependencies, deliverables, gates, and release criteria.
15. [`docs/14_REFERENCES.md`](docs/14_REFERENCES.md) — authoritative sources and version references.

## Operative Codex sequence

Begin with [`prompts/00_CODEX_INITIATOR.md`](prompts/00_CODEX_INITIATOR.md). Dispatch work-package prompts `01` through `13` according to the dependency graph in `docs/13_WORK_PACKAGES.md`. Use prompts `14` through `19` for integration, adversarial review, editorial control, defect triage, security review, and research reporting.

The prompt directory is complete:

- [`prompts/`](prompts/)

## Machine-readable contracts

All public artifacts must conform to the versioned JSON Schemas in [`schemas/`](schemas/). Reviewed governance records and templates live in [`governance/`](governance/). Representative fixtures and expected artifacts live in [`examples/`](examples/).

## Implementation scaffold

The pinned Lean/Lake scaffold is in [`scaffold/`](scaffold/). It is deliberately fail-closed: extraction and rendering placeholders report typed unsupported diagnostics until their respective work packages provide verified implementations.

## Validation

Run:

```bash
python -m pip install -r scripts/requirements-dev.txt
python scripts/validate_package.py
sha256sum -c MANIFEST.sha256
```

A successful package validation does not imply that the Lean scaffold is implemented. Lean build and semantic acceptance evidence are governed by the work-package gates.

## Trust boundary

Lean elaboration, environment inspection, and explicit semantic checks are authoritative. English renderings, learned outputs, summaries, and proof explanations are interpretations. Unsupported or lossy behavior must remain visible in structured diagnostics and loss records.
