#!/usr/bin/env python3
from pathlib import Path
import json, sys
import yaml
from jsonschema import Draft202012Validator

ROOT = Path(__file__).resolve().parents[1]
errors = []

def load_json(path):
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except Exception as exc:
        errors.append(f"{path}: invalid JSON: {exc}")
        return None

def validate(instance_path, schema_path):
    instance = load_json(instance_path)
    schema = load_json(schema_path)
    if instance is None or schema is None:
        return
    for err in sorted(Draft202012Validator(schema).iter_errors(instance), key=lambda e: list(e.path)):
        loc = ".".join(map(str, err.path)) or "<root>"
        errors.append(f"{instance_path}:{loc}: {err.message}")

required = [
    "README.md", "MASTER_SPEC.md", "VERSION", "docs/00_PRODUCT_CHARTER.md",
    "docs/13_WORK_PACKAGES.md", "prompts/00_CODEX_INITIATOR.md",
    "schemas/semantic_ir.schema.json", "schemas/rendering.schema.json",
    "governance/agent_review.template.yaml", "scaffold/lean-toolchain",
]
for rel in required:
    if not (ROOT / rel).exists():
        errors.append(f"missing required artifact: {rel}")

for schema in (ROOT / "schemas").glob("*.schema.json"):
    data = load_json(schema)
    if data is not None:
        for err in Draft202012Validator.check_schema(data) or []:
            errors.append(f"{schema}: schema error: {err}")

validate(ROOT/"examples/fixtures/logic_quantifier_implication.json", ROOT/"schemas/fixture.schema.json")
validate(ROOT/"examples/outputs/injective.rendering.json", ROOT/"schemas/rendering.schema.json")

try:
    rule = yaml.safe_load((ROOT/"examples/rules/function_injective.yaml").read_text(encoding="utf-8"))
    if rule.get("rule_id") != "logic.function_injective":
        errors.append("example rule has unexpected rule_id")
except Exception as exc:
    errors.append(f"example rule YAML invalid: {exc}")

# Cross-artifact invariants.
version = (ROOT/"VERSION").read_text(encoding="utf-8").strip() if (ROOT/"VERSION").exists() else None
if version != "1.0.0":
    errors.append(f"VERSION must be 1.0.0, found {version!r}")
if "v4.32.0" not in (ROOT/"scaffold/lean-toolchain").read_text(encoding="utf-8"):
    errors.append("stable Lean pin must be v4.32.0")

if errors:
    print("PACKAGE VALIDATION FAILED", file=sys.stderr)
    for item in errors:
        print(f"- {item}", file=sys.stderr)
    raise SystemExit(1)
print("PACKAGE VALIDATION PASSED")
print(f"Validated {len(list((ROOT/'schemas').glob('*.schema.json')))} schemas and representative examples.")
