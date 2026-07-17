#!/usr/bin/env python3
from pathlib import Path
import hashlib
root = Path(__file__).resolve().parents[1]
rows=[]
for p in sorted(root.rglob('*')):
    if p.is_file() and p.name not in {'MANIFEST.sha256'}:
        rows.append(f"{hashlib.sha256(p.read_bytes()).hexdigest()}  {p.relative_to(root).as_posix()}")
(root/'MANIFEST.sha256').write_text('\n'.join(rows)+'\n', encoding='utf-8')
print(f"Wrote {len(rows)} checksums")
