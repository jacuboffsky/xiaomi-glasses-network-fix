# Changelog

## 3.3.0: network fix r1

- Ported the five-class Wi-Fi fix to app 3.3.0 (303000).
- Verified the original methods before porting, the released APK signature, and DEX rebuild identity.
- Confirmed in-place upgrade and preservation of account/pairing in the tested setup.
- Documented validation limits and separate firmware-network troubleshooting.

## 3.1.27: network fix r2

- Removed competing Wi-Fi suggestions and corrected network-loss handling.
- Confirmed media import in the tested setup.

## 3.1.27: network fix r1

- Handled the successful network callback without waiting for a legacy broadcast.
- Added main-thread dispatch and terminal-result guards.
