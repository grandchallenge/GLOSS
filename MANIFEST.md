# Artifact Manifest

Version: 1.0.0
Issued: 2026-07-16

## Normative specifications
- `docs/00_PRODUCT_CHARTER.md`
- `docs/01_SYSTEM_ARCHITECTURE.md`
- `docs/02_TRUST_SEMANTICS_LOSS.md`
- `docs/03_SEMANTIC_IR.md`
- `docs/04_EXTRACTION_ALIGNMENT.md`
- `docs/05_CANONICAL_ENGLISH.md`
- `docs/06_RENDERERS_RULES.md`
- `docs/07_PROOF_NARRATION.md`
- `docs/08_DATA_BACKTRANSLATION.md`
- `docs/09_EVALUATION_TESTING.md`
- `docs/10_INTERFACES_OPERATIONS.md`
- `docs/11_SECURITY_ACCESSIBILITY_RELEASE.md`
- `docs/12_GOVERNANCE_RISKS_RESEARCH.md`
- `docs/13_WORK_PACKAGES.md`
- `docs/14_REFERENCES.md`

## Operative prompts
- `prompts/00_CODEX_INITIATOR.md`
- `prompts/01_WP0_FOUNDATIONS.md`
- `prompts/02_WP1_EXTRACTOR_SPIKE.md`
- `prompts/03_WP2_SEMANTIC_IR.md`
- `prompts/04_WP3_CANONICAL_RENDERER.md`
- `prompts/05_WP4_RULE_REGISTRY.md`
- `prompts/06_WP5_PROOF_NARRATION.md`
- `prompts/07_WP6_CORPUS.md`
- `prompts/08_WP7_LEARNED_ENSEMBLE.md`
- `prompts/09_WP8_BACKTRANSLATION.md`
- `prompts/10_WP9_EVALUATION.md`
- `prompts/11_WP10_INTERFACES.md`
- `prompts/12_WP11_HARDENING.md`
- `prompts/13_WP12_RELEASE_REPORT.md`
- `prompts/14_INTEGRATION_COORDINATOR.md`
- `prompts/15_ADVERSARIAL_REVIEWER.md`
- `prompts/16_AMANUENSIS.md`
- `prompts/17_BUG_TRIAGE.md`
- `prompts/18_SECURITY_REVIEW.md`
- `prompts/19_RESEARCH_REPORTER.md`

## Machine-readable contracts
- `schemas/agent_review.schema.json`
- `schemas/corpus_record.schema.json`
- `schemas/decision_record.schema.json`
- `schemas/experiment_manifest.schema.json`
- `schemas/fixture.schema.json`
- `schemas/proof_trace.schema.json`
- `schemas/rendering.schema.json`
- `schemas/rule.schema.json`
- `schemas/semantic_ir.schema.json`
- `schemas/work_package.schema.json`

## Implementation status

- The Lean scaffold is intentionally incomplete and fails closed.
- No learned model weights or external corpus snapshots are bundled.
- The stable package pin is Lean/mathlib v4.32.0.
- Forward-compatibility testing is non-gating until explicitly promoted.
