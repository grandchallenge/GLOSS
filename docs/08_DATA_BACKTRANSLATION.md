# 08. Corpus, Annotation, Learned Training, and Backtranslation

## Corpus layers

Maintain immutable and separately labeled layers:

1. `raw-formal`: repository, commit, module, declaration, source, and license;
2. `extracted-ir`: SemanticIR artifacts;
3. `deterministic-renderings`: canonical and reviewed rule outputs;
4. `human-annotations`: reviewed natural language, alignments, and judgments;
5. `synthetic-renderings`: model-generated candidates with model provenance;
6. `backtranslations`: generated Lean and verification outcomes;
7. `benchmark`: frozen leakage-controlled evaluation sets.

Synthetic data is never merged into human-authored data without an explicit label.

## Provenance

Every sample records source URL and commit, file and declaration, license and notice obligations, toolchain and extractor commit, IR and registry versions, renderer or model identity, reviewer code, split and contamination group, and hashes of source, IR, and output.

## Dataset splits

Random declaration splits are prohibited as the only split strategy. Group by file and namespace, normalized proposition family, construct, repository version, and proof dependency neighborhood where practical. Maintain development, public test, private conformance, adversarial mutation, and future-toolchain sets.

## Human annotation

Annotators receive source, canonical rendering, and optional context. They produce natural text, clause-node alignment, compression and loss labels, ambiguity notes, terminology tags, and accept/reject judgments for alternatives. Benchmark items receive double annotation; critical disagreements are adjudicated by a domain expert.

## Quality filters

Quarantine unresolved metavariables, unsupported opaque roots, missing license or commit, contradictory alignments, critical omissions in exact output, schema failures, train-test duplicates, and prompt leakage.

## Storage and reproducibility

Use compressed JSONL for canonical records, content-addressed auxiliary artifacts, and Parquet for large analyses. Every corpus build writes an immutable manifest with source commits, filters, counts, hashes, and commands. Released benchmarks never follow moving dependencies.

## Training tasks

- IR to canonical English;
- IR to natural English;
- English to IR sketch;
- English to Lean proposition;
- clause-node alignment;
- omission detection;
- semantic mutation classification;
- renderer ranking under hard constraints;
- proof-state delta to narration.

Multi-task supervision is preferred because alignment and mutation detection constrain semantics more directly than text likelihood alone.

## Semantic cycle

```text
P : Lean
 -> IR(P)
 -> English E
 -> candidate Lean Q
 -> elaborate Q
 -> IR(Q)
 -> structural and theorem-level comparison
```

Store every intermediate. Compare binder structure, quantifier order and dependency, connective polarity, relation head and direction, domains, hypotheses, conclusion, recognized constructs, definitional equality, and provable equivalence.

## Contrastive mutations

Generate near-miss negatives by deleting hypotheses, weakening or strengthening relations, reversing implication, swapping universal and existential quantifiers, moving binders across scope boundaries, reversing composition, changing membership to subset, changing equality to equivalence, dropping uniqueness, changing domains, confusing pointwise and uniform properties, and replacing “eventually” with “always.”

Each mutation records the changed node and intended semantic effect.

## Metrics and ablations

Report normalized-IR match, critical-node F1, quantifier and polarity accuracy, elaboration, definitional equality, proved equivalence, mutation rejection, calibration, and human naturalness/faithfulness. Compare raw Lean versus IR, canonical versus natural pivots, alignments on/off, mutation training on/off, single versus ensemble, compile-only versus structural verification, and rule features on/off.

No learned renderer becomes default until it matches canonical critical-node coverage on the private conformance set, materially improves naturalness, and has a documented failure analysis.
