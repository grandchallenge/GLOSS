# 10. CLI, API, IDE, Observability, and Operations

## Lean commands

```lean
#gloss MyNamespace.theoremName
#gloss! MyNamespace.theoremName
#gloss_trace MyNamespace.theoremName
```

`#gloss!` forces maximally explicit canonical mode. Commands emit readable information and structured data for capable editor clients.

## CLI

```bash
lake exe gloss extract \
  --module Mathlib.Algebra.Group.Basic \
  --declaration MyNamespace.foo \
  --profile mathematical_standard \
  --output foo.ir.json

lake exe gloss render \
  --input foo.ir.json \
  --mode canonical \
  --format json

lake exe gloss batch \
  --manifest declarations.txt \
  --output corpus.jsonl.zst \
  --jobs 8
```

Global flags include configuration path, log level, deterministic mode, toolchain report, fail-on-warning codes, metrics output, and `--no-network`.

Exit codes: `0` success, `2` invalid configuration, `3` Lean environment/elaboration failure, `4` schema failure, `5` disallowed partial rendering, `6` equivalence failure, `7` compatibility mismatch, and `8` internal error.

## JSON API

Operations: `extractDeclaration`, `renderIR`, `compareIR`, `validateRendering`, `traceProof`, `listRules`, and `explainNode`. Requests and responses carry explicit schema versions. Unknown major versions are rejected.

## Editor integration

Provide a code action, mode selector, source-to-clause and clause-to-source navigation, disclosure of compressed and unrendered nodes, copy as text or JSON, and proof narration synchronized with the infoview. Canonical output remains available when learned rendering is unavailable.

## Accessibility UI

Use semantic headings and lists, accessible text for symbols, keyboard navigation, non-colour indicators, screen-reader announcements of mode and faithfulness, and textual alignment descriptions.

## Configuration

Precedence: CLI, project `.gloss.toml`, user config, built-in defaults. Serialize the resolved configuration or its content hash into each artifact.

## Logs and metrics

Structured logs include timestamp, severity, run ID, declaration, component, event code, duration, toolchain, commit, and optional node/rule ID. Source and generated English are excluded from telemetry by default.

Track extraction/rendering latency, throughput, schema failures, opaque-node rate, rule hits/collisions, critical coverage, unrendered rate, learned rejection reasons, cache hits, trace size, and memory.

## Run manifests

Every experiment or corpus run records command, environment, hardware, git commits and dirty state, locks, seeds, data splits, model/decoding config, outputs, hashes, and completion status. Reports are generated from manifests rather than manually transcribed.

## Local-first operations

Canonical rendering works without network or credentials. Optional learned services accept validated IR rather than repositories, are stateless by default, retain no content unless configured, identify model/policy versions, impose size and rate limits, and fall back to deterministic output.

Corpus workers use pinned isolated containers, immutable source commits, content-addressed outputs, and a retained error ledger.
