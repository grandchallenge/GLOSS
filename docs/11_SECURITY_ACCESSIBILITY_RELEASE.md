# 11. Security, Privacy, Licensing, Accessibility, and Release

## Threat model

Threats include malicious metaprograms executed during elaboration, untrusted dependencies, corpus poisoning, adversarial rules, prompt injection in comments or documentation, private-code exfiltration, oversized or malformed artifacts, compromised dependencies, and fluent incorrect output treated as proof authority.

Lean source ingestion is code execution because elaboration can run compiled metaprograms. Untrusted extraction therefore uses a sandbox with no network by default, read-only source, bounded CPU/memory/time, restricted outputs, pinned dependencies, and separate trust classification.

## Input and model hardening

Limit artifact size, graph depth, trace steps, and regex complexity. Validate schemas before rendering. Treat comments and docstrings as untrusted data and never concatenate them into privileged model instructions. Rule data cannot execute arbitrary code. Learned remote use is opt-in, and private source is not retained for training without separate explicit consent.

## Licensing

Mathlib is Apache-2.0 licensed. Every extracted sample retains source and license provenance. Combining repositories or natural-language corpora requires legal review before public dataset release. This specification does not assert that every transformed corpus may be redistributed.

## Supply chain

Commit locks, pin CI actions by immutable revision where practical, generate SBOMs and checksums, scan dependencies and containers, sign releases when infrastructure permits, and require reviewed toolchain upgrades.

## Accessibility

Accessibility is a first-class renderer and evaluation track. Speech output includes plain text, pronunciation tokens, optional SSML, pause boundaries, scope markers, node alignment, and verbosity level. Evaluate comprehension and task completion with users familiar with mathematical screen-reader workflows, not subjective preference alone.

## Versioning

Use semantic versioning for schemas and CLI. Rule registries, corpora, and models have independent versions referenced by releases. Rule IDs are never reused. Deprecated rules retain tombstones and replacements.

## Toolchain upgrades

Open a dedicated work package, update compatibility branch only, run all fixtures, classify diffs as semantic/alignment/pretty-print/bug, update adapters and migrations, obtain Formalist, Experimentalist, and Steward approval, then tag a release candidate.

## Release contents

Source tag, Lean package, renderer package, schemas, registry, benchmark subset/results, SBOM, checksums, compatibility report, migration guide, and model/dataset cards. Independent clean-room reproduction is required for 1.0.

## Incident response

Freeze the affected version, disable model or registry independently when possible, preserve hashes and logs, identify affected outputs, issue corrected artifacts and migration notice, and add a minimized regression fixture and decision record.
