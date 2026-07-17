.PHONY: validate manifest lean-build
validate:
	python scripts/validate_package.py
manifest:
	python scripts/generate_manifest.py
lean-build:
	cd scaffold && lake update && lake build
