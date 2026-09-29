# Installation, signing and rollback

## Verify the download

Download the APK and checksum file from the same release. In that directory:

```sh
shasum -a 256 -c SHA256SUMS.txt
```

The expected certificate fingerprint is published in the main README. A matching checksum establishes artifact identity, not universal compatibility.

## Update an existing project-signed installation

Use Android's installer, or select the intended physical device explicitly:

```sh
adb devices -l
adb -s PHONE_SERIAL install -r xiaomi-glasses-3.3.0-network-fix.apk
```

Replace `PHONE_SERIAL` with your device's serial. Do not use uninstall, force or downgrade flags as an automatic response to a failed update. This path was tested from the project's 3.1.27 build to 3.3.0; account and glasses remained visible.

## Replace the official app

The official app and this project use different signing keys. Android normally refuses an in-place update between them. Uninstalling the current app can remove local settings, account sessions and app-private data. Preserve your media and account access first, and decide whether that loss is acceptable. An external-files copy is not a complete app backup.

This project does not automate uninstall, app-data clearing, device reset or firmware changes. It does not bypass Android signature checks.

## Build and sign

Use Java 21, the pinned Apktool version in [TOOLS.json](TOOLS.json), and the command in the main README. The output is unsigned. Align and sign it with Android's APK signing tools or the pinned Uber APK Signer. Keep your own keystore and its password outside Git and release assets.

A self-signed build cannot update the project's signed release unless it uses the same signing key. The project's private key is not published. APK archive hashes may differ between builds because of ZIP metadata and signing; the verified modified DEX hash is recorded in [VALIDATION.md](VALIDATION.md).

## Return to an official version

Obtain the official APK from Xiaomi. Returning normally requires uninstalling the project-signed app, with the same data-loss implications. Moving from 3.3.0 to an older version also introduces a version downgrade; do not assume data-preserving rollback. This repository provides no firmware downgrade procedure.
