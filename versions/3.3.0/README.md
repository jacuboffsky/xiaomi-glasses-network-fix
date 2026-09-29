# App 3.3.0: network fix r1

Full arm64 APK; versionCode 303000, minSdk 29, targetSdk 31.

Original APK SHA-256:

```text
19b17bea11bb5de935d9d3da62b14466cfa73bad8f303e1a5c910af2a67ec246
```

Patched APK SHA-256:

```text
d8fd2c130a7f0afa81e9100f5ae8d07158e2ca49b093435abce91514a32e388d
```

Changed methods were compared with the original 3.1.27 implementation. The port accounts for the obfuscated functional-interface package changing from `ic` to `gc`, the SSID-check method changing from `C` to `B`, and `const-string/jumbo` instruction formatting. `scripts/port_330.py` checks equivalence before replacing the required methods and fields.

Only `classes15.dex` and signing metadata differ from the original APK. The five original/patched classes and their hashes are retained under `src/` in this directory. See the root README for the rebuild command, [validation](../../docs/VALIDATION.md) for evidence, and [installation](../../docs/RECOVERY.md) for signing limitations.
