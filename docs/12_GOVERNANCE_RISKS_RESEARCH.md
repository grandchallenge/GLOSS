# 12. Agent Council Governance, Risks, and Research Programme

## Council roles

- **Steward:** scope, trust doctrine, and promotion authority.
- **Cartographer:** architecture, IR, and dependency boundaries.
- **Formalist:** Lean semantics, equivalence, and kernel-facing claims.
- **Grammarian:** controlled language and ambiguity policy.
- **Composer:** natural and pedagogical realization.
- **Mechanist:** implementation, build, packaging, and reliability.
- **Experimentalist:** benchmarks, statistics, and ablations.
- **Adversary:** semantic mutations and red-team cases.
- **Verifier:** invariant checks and release gates.
- **Archivist:** corpus, provenance, and manifests.
- **Amanuensis:** artifact ledger, decisions, terminology, review provenance, cross-document consistency, and editorial integration.
- **Accessibility Reviewer**, **Security Reviewer**, and **Referee** for their respective gates.

Every work package records owner, dependencies, deliverables, acceptance criteria, tests, reviewers, evidence, unresolved obligations, accepted limitations, and status. Critical obligations block release.

## Required ADRs

1. SemanticIR instead of direct source-to-English production architecture.
2. Lean-native extraction and verification.
3. Controlled English as reference renderer.
4. Explicit node-level loss accounting.
5. Learned proposal but reviewed rule promotion.
6. Proof narration from state deltas.
7. Compilation not sufficient for backtranslation faithfulness.
8. Stable toolchain pin and compatibility layer.

## Terminology control

“Exact,” “equivalent,” “lossless,” “verified,” “proof,” and “confidence” have controlled definitions. UI and publications cannot make stronger claims than the evidence status.

## Principal risks

- fluent omission of hypotheses;
- quantifier reordering and scope corruption;
- Lean API churn;
- rule collision;
- corpus leakage;
- compile-only equivalence claims;
- invented proof motivation;
- malicious Lean metaprograms;
- opaque-expression guessing;
- licensing barriers;
- ambiguous speech;
- learned service dependency;
- silent output drift;
- over-normalization of author intent;
- performance failure in editor use;
- inconsistent annotation;
- generated English mistaken for proof;
- premature expansion before the deterministic spine stabilizes.

Each risk has an owner, detection method, mitigation, and release severity in `docs/RISK_REGISTER.md`.

## Research questions

- Does elaborated SemanticIR reduce scope and domain errors relative to raw Lean?
- Can node-level loss accounting predict human faithfulness judgments?
- Does renderer disagreement identify errors better than model confidence?
- Can anti-unification discover useful conventional constructs?
- Do semantic mutations improve backtranslation faithfulness?
- Does state-delta narration outperform tactic-name narration?
- Does accessibility-specific verbalization improve comprehension?

## Baselines and publication discipline

Compare pretty-printer pronunciation, surface templates, direct LLM source-to-English, LLM with type context, canonical renderer, constrained IR renderer, and validator ensemble. Release prompts and evaluation code where licensing permits. Declare model versions, attempts, failures, abstentions, leakage controls, and distinction among compilation, equivalence, and human judgment.

Candidate papers cover loss-accounted semantic rendering, semantic backtranslation cycles, proof narration from state transitions, and accessible dependent type theory. Novelty claims require a fresh related-work review and must be narrower than broad claims that no prior Lean informalization system exists.
