# 04. Extraction, Normalization, and Alignment

## Extraction modes

The extractor supports declaration lookup in an imported environment, source-file elaboration with Info Trees, module batch extraction, editor requests at source positions, and proof-trace capture under an explicit instrumentation flag.

Imported environments provide elaborated declarations but may not retain every interactive source datum. Therefore, high-fidelity source mapping and proof-state tracing use an elaboration-time path. Capability differences are serialized rather than hidden.

## `Expr` traversal

The visitor must handle every core expression constructor, preserve binder context, distinguish bound variables, free variables, metavariables, constants, and literals, instantiate assigned metavariables, and reject or report unresolved metavariables. Types are inferred in the exact local context and cached only where context identity is safe.

Definitions are not unfolded indiscriminately. Reduction and transparency are configured and recorded. Normalization rules are reviewed separately from the extractor.

## Product classification

Dependent products are classified using inferred types, binder information, source syntax, and local context:

- proposition-valued explicit binder: universal quantifier;
- proposition-valued anonymous binder: implication;
- type-valued binder: function or dependent function;
- instance binder: structure assumption;
- proof binder: hypothesis;
- ambiguous case: conservative product node with alternatives.

## Source alignment

Alignment is many-to-many. One source span can elaborate to several expressions, and synthetic syntax can inherit an original reference span. Each alignment records semantic node ID, source spans, provenance (`original`, `synthetic`, `inferred`, `reconstructed`, `absent`), confidence (`exact`, `containing`, `nearest_ancestor`, `absent`), and associated Info kind when available.

Offsets are never fabricated. Missing alignment is a valid explicit state.

## Surface notation

The source view preserves notation evidence such as `x ∈ s`, while the semantic identity records the resolved membership relation. Renderers may choose “belongs to,” “is in,” or a symbol reading without reparsing the source.

## Binder dependency graph

Construct directed edges from binder references in types and bodies. Reordering uses a stable topological sort constrained by original quantifier blocks, implication boundaries, typeclass dependencies, scope, and user no-reorder policy. A cycle is an invariant failure.

## Error codes

- `E100`: unsupported declaration kind;
- `E110`: unresolved metavariable;
- `E120`: type inference failure;
- `E130`: source alignment unavailable;
- `E140`: cyclic binder dependency;
- `E150`: serialization failure;
- `E160`: incompatible toolchain;
- `E170`: normalization guard exceeded;
- `E180`: proof trace unavailable;
- `E190`: internal invariant violation.

Diagnostics include declaration, node and span when known, severity, and remediation.

## Determinism

Every fixture is extracted in at least two clean processes. Per-declaration canonical JSON must be byte-identical after excluding explicit run timestamps. Parallel batch ordering may differ; individual artifacts may not.
