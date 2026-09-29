# Xiaomi Glasses: Android network fix

Unofficial Wi-Fi compatibility patch for the Xiaomi Glasses Android app. It fixes the handoff between Android's local Wi-Fi connection callback and the app's media-import screen.

**Current release: 3.3.0 · network fix r1** · [Download APK](https://github.com/jacuboffsky/xiaomi-glasses-network-fix/releases/latest) · [Русский](README.ru.md)

> This is a modified app, signed with a project-specific certificate. It is not an official Xiaomi release. Read the [installation guide](docs/RECOVERY.md) before replacing an official installation: the different signature can require uninstalling the app and losing its local data.

## Is this the problem you have?

The app sees your Xiaomi AI Glasses over Bluetooth, shows their battery level, and says there are photos or videos to import. You tap **Import**, approve Android's request to join the temporary `Xiaomi AI Glasses XXXX` Wi-Fi network, and wait. Android may stay on "Authenticating…" before the app reports **"Couldn't connect"**. Nothing imports. A related failure is Android reporting that the app cancelled the device-selection request.

**This patch is intended for that failure.** In the investigated case, Wi-Fi authentication and DHCP actually succeeded. The app failed to recognise the successful connection, or cancelled its own request during a network transition. The patch corrects those two paths so import can proceed.

If your symptoms match, this is a build worth testing, not a guaranteed fix: the same message can have other causes. Media import was confirmed working by the tester on both 3.1.27 and 3.3.0. It does not fix a wrong Wi-Fi password, a broken access point, or every firmware-update error.

## What it fixes

On the investigated Android 17 device, Android successfully established a local Wi-Fi connection to the glasses, but the app continued waiting for an older broadcast and timed out. A second race could cancel Android's device-selection request while switching networks.

The patch:

- Handles `NetworkCallback.onAvailable` on the main thread and completes the connection without waiting for the legacy broadcast.
- Validates the live network and process binding; ignores duplicate or late terminal results.
- Avoids competing `WifiNetworkSuggestion` and `WifiNetworkSpecifier` requests.
- Keeps a pending request alive when an older network is lost, without unbinding a newer connection.

Only five classes in `classes15.dex` are changed. Firmware code, Wi-Fi authentication, media API behavior and Android system settings are not modified.

## Download and install

1. Download `xiaomi-glasses-3.3.0-network-fix.apk` and `SHA256SUMS.txt` from the [latest release](https://github.com/jacuboffsky/xiaomi-glasses-network-fix/releases/latest).
2. Verify the file with `shasum -a 256 -c SHA256SUMS.txt` from the download directory.
3. Follow [installation and rollback](docs/RECOVERY.md). An existing project-signed build can be updated in place; an official Xiaomi build has a different signature.

| Item | Value |
| --- | --- |
| App version | 3.3.0 / versionCode 303000 |
| Package | `com.xiaomi.superhexa` |
| Architecture | arm64-v8a |
| Minimum Android API | 29 |
| Patched APK SHA-256 | `d8fd2c130a7f0afa81e9100f5ae8d07158e2ca49b093435abce91514a32e388d` |
| Signing certificate SHA-256 | `4e2576431e8b118aa0b1b688f4e70b2d524d05b690e28892636d765937c28ccb` |

## Validation and limits

Version 3.3.0 installs over the earlier project-signed build, starts successfully, and preserves the account and paired glasses in the tested setup. The rebuilt DEX matches the released DEX. **The tester confirmed that media import works on 3.3.0.**

Firmware download worked after a separate network/proxy/DNS configuration change. Completion was reported by the tester, but the resulting firmware version was not independently verified. The APK patch does not fix every firmware network error and contains no proxy or router settings. See [validation](docs/VALIDATION.md) and [firmware troubleshooting](docs/FIRMWARE.md).

## Build and inspect

The build script verifies the original APK, tool and smali hashes, then produces an **unsigned** APK. It does not install anything or modify a connected device.

```sh
python3 scripts/rebuild.py \
  --version 3.3.0 \
  --original /path/to/original-3.3.0.apk \
  --apktool /path/to/apktool-3.0.3.jar \
  --java /path/to/java \
  --out build/3.3.0
```

Use the exact original APK hash listed in [version details](versions/3.3.0/README.md). Obtain the original app from Xiaomi. Tool versions and download sources are in [TOOLS.json](docs/TOOLS.json). Align and sign your build with your own key; it will not update a release signed with a different key.

## Repository layout

| Path | Contents |
| --- | --- |
| `versions/3.3.0/` | Original and patched classes, hash manifest, release details |
| `src/`, `patches/` | Earlier 3.1.27 implementation and patch history |
| `scripts/` | Version-specific port and verified rebuild tools |
| `docs/` | Installation, validation, troubleshooting and publication scope |

## Reporting issues

Include app version, Android version, the screen where the failure occurs, and a short redacted error excerpt. Do not upload account identifiers, device serials, MAC addresses, Wi-Fi passwords, signing keys, personal media or full diagnostic logs. See [CONTRIBUTING.md](CONTRIBUTING.md).

This repository contains third-party application excerpts. It does not claim ownership of Xiaomi's application or grant rights to that code. See [NOTICE](NOTICE).

## Disclaimer

Materials are provided for educational, informational and interoperability-research purposes, as is and at your own risk. This project is not affiliated with or endorsed by Xiaomi. No warranty of compatibility, data preservation or fitness for a particular purpose is provided, to the extent permitted by applicable law. See the [full disclaimer](docs/LEGAL.md).
