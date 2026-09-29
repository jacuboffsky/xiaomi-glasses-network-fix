# Validation

## App 3.3.0: network fix r1

| Check | Result |
| --- | --- |
| Original APK | Exact SHA-256 pinned in the version manifest/documentation |
| Port | Changed methods checked against the earlier version before porting |
| Archive comparison | Non-signature entry contents unchanged except `classes15.dex` |
| Signature | APK signature verified; project certificate has a generic subject |
| Rebuild | Rebuilt DEX byte-for-byte equal to the release DEX |
| Installation | In-place update from the earlier project-signed build succeeded |
| Startup | No fatal exception or verification error in the observed startup window |
| Account and glasses | Tester confirmed both remained available |
| Media import on 3.3.0 | Not independently retested |
| Firmware download | Confirmed after separate proxy and DNS configuration |
| Firmware installation | Tester reported apparent completion; final version not independently checked |

Released `classes15.dex` SHA-256:

```text
2de9a9d3737865c35ed33d13a7acbde5bb88f4b200940b0dcd83efa96fe6641a
```

## Earlier 3.1.27 patch

The tester confirmed media import worked. Logs showed successful local Wi-Fi connection, thumbnail transfers and source-file progress reaching 100%. This does not establish complete collection integrity or retention of all originals on the glasses.

Released `classes15.dex` SHA-256:

```text
60245abbd3ac3632f00aed16ea9d24cee0e9fc1f1be1ec317979e22d79884126
```

## Scope

These are observations from one tested setup, not a broad device-certification matrix. Firmware code is unchanged. Raw logs, personal media, backups and signing secrets are not distributed.
