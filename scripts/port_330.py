#!/usr/bin/env python3
"""Port only verified equivalent methods to the decoded 3.3.0 DEX."""
import argparse
import difflib
import hashlib
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parent.parent

def methods(text):
    return {m.group(1): m.group(0) for m in re.finditer(
        r'^\.method [^\n]*? ([^ ]+\([^\n]*)\n.*?^\.end method', text, re.M | re.S)}

def adapt(text, util=False):
    text = text.replace('Lic/', 'Lgc/')
    if util:
        text = text.replace('.method public final C(Landroid/content/Context;Ljava/lang/String;)Z',
                            '.method public final B(Landroid/content/Context;Ljava/lang/String;)Z')
    return text

def normalize(text):
    return text.replace('const-string/jumbo ', 'const-string ')

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--decoded', type=Path, required=True)
    parser.add_argument('--evidence', type=Path, required=True)
    args = parser.parse_args()
    manifest = json.loads((ROOT / 'src/manifest.json').read_text())
    proposed = []
    for rel, hashes in manifest.items():
        old = (ROOT / 'src/original' / rel).read_text()
        patch = (ROOT / 'src/patched' / rel).read_text()
        for text, key in [(old, 'original_sha256'), (patch, 'patched_sha256')]:
            assert hashlib.sha256(text.encode()).hexdigest() == hashes[key]
        path = args.decoded / 'smali/com/superhexa/lib/channel' / rel
        new = path.read_text()
        target = new
        original_methods, patched_methods, new_methods = methods(old), methods(patch), methods(new)
        for key, body in patched_methods.items():
            if key in original_methods and original_methods[key] == body:
                continue
            adapted = adapt(body, rel == 'tools/ConnectUtil.smali')
            mapped_key = next(iter(methods(adapted)))
            if key in original_methods:
                expected = adapt(original_methods[key], rel == 'tools/ConnectUtil.smali')
                assert mapped_key in new_methods, (rel, mapped_key)
                assert normalize(expected) == normalize(new_methods[mapped_key]), (rel, key, 'source drift')
                target = target.replace(new_methods[mapped_key], adapted, 1)
            else:
                assert key.startswith('xg') and mapped_key not in new_methods
                target += '\n\n' + adapted + '\n'
        for field in re.findall(r'^\.field .*? xg[^\n]+', patch, re.M):
            assert field not in new
            marker = '# static fields' if ' static ' in field else '# instance fields'
            assert marker in target
            target = target.replace(marker, marker + '\n' + field, 1)
        proposed.append((rel, path, new, target))
    # No writes to decoded sources occur until every original method matches.
    args.evidence.mkdir(parents=True, exist_ok=False)
    diff = ''
    for rel, path, original, target in proposed:
        for category, text in [('original', original), ('patched', target)]:
            dst = args.evidence / category / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text(text)
        path.write_text(target)
        diff += ''.join(difflib.unified_diff(original.splitlines(True), target.splitlines(True),
                                            fromfile='original/' + rel, tofile='patched/' + rel))
    (args.evidence / 'network-fix-330.patch').write_text(diff)
    print('Ported five classes after method-by-method equivalence checks.')

if __name__ == '__main__':
    main()
