#!/usr/bin/env python3
"""Rebuild the unsigned local patch; never installs or signs anything."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import zipfile

EXPECTED = {
    '3.1.27': 'cfb86b4a886015ef75297646609c41fbd0e5a0069f8d68610ec6282f3ea68a00',
    '3.3.0': '19b17bea11bb5de935d9d3da62b14466cfa73bad8f303e1a5c910af2a67ec246',
}
ROOT = Path(__file__).resolve().parent.parent

def sha(path):
    digest = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(chunk)
    return digest.hexdigest()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--original', type=Path, required=True)
    parser.add_argument('--apktool', type=Path, required=True)
    parser.add_argument('--java', default='java')
    parser.add_argument('--out', type=Path, required=True)
    parser.add_argument('--version', choices=EXPECTED, default='3.1.27')
    args = parser.parse_args()
    source_root = ROOT if args.version == '3.1.27' else ROOT / 'versions' / args.version
    if sha(args.original) != EXPECTED[args.version]:
        raise SystemExit('Wrong original APK; no files modified.')
    tool = json.loads((ROOT / 'docs/TOOLS.json').read_text())[0]
    if sha(args.apktool) != tool['sha256']:
        raise SystemExit('Apktool hash mismatch; no files modified.')
    args.out.mkdir(parents=True, exist_ok=False)
    container = args.out / 'dex-container.apk'
    with zipfile.ZipFile(args.original) as src, zipfile.ZipFile(container, 'w') as dst:
        for name in ('AndroidManifest.xml', 'resources.arsc', 'classes15.dex'):
            dst.writestr('classes.dex' if name == 'classes15.dex' else name, src.read(name))
    decoded = args.out / 'decoded'
    cmd = [args.java, '-jar', str(args.apktool.resolve())]
    subprocess.run(cmd + ['d', '-r', '-o', str(decoded), str(container)], check=True)
    base = decoded / 'smali/com/superhexa/lib/channel'
    manifest = json.loads((source_root / 'src/manifest.json').read_text())
    for name, hashes in manifest.items():
        if sha(base / name) != hashes['original_sha256']:
            raise SystemExit('Original smali mismatch: ' + name)
        if sha(source_root / 'src/patched' / name) != hashes['patched_sha256']:
            raise SystemExit('Patched smali mismatch: ' + name)
    for name in manifest:
        shutil.copyfile(source_root / 'src/patched' / name, base / name)
    patched = args.out / 'dex-patched.apk'
    subprocess.run(cmd + ['b', str(decoded), '-o', str(patched)], check=True)
    with zipfile.ZipFile(patched) as src:
        dex = src.read('classes.dex')
    output = args.out / ('xiaomi-glasses-' + args.version + '-network-fix-unsigned.apk')
    with zipfile.ZipFile(args.original) as src, zipfile.ZipFile(output, 'w') as dst:
        for entry in src.infolist():
            upper = entry.filename.upper()
            if upper.startswith('META-INF/') and (
                upper.endswith(('.RSA', '.DSA', '.EC', '.SF')) or upper == 'META-INF/MANIFEST.MF'
            ):
                continue
            dst.writestr(entry, dex if entry.filename == 'classes15.dex' else src.read(entry.filename))
    with zipfile.ZipFile(args.original) as src, zipfile.ZipFile(output) as dst:
        changed = [name for name in src.namelist() if not name.startswith('META-INF/')
                   and src.read(name) != dst.read(name)]
        if changed != ['classes15.dex']:
            raise SystemExit('Unexpected archive changes: ' + repr(changed))
    print('Verified unsigned APK:', output)
    print('SHA256:', sha(output))

if __name__ == '__main__':
    main()
