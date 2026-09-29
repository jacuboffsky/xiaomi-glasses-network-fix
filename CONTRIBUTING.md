# Contributing

Keep changes focused on the documented Android network failure. Trace callers before changing connection lifecycle behavior, preserve security and media handling, and describe what was actually tested.

For issues, include the app/build version, Android version and reproduction steps. Redact logs before attaching them. Never attach account IDs, serials, MAC addresses, passwords, signing keys or personal media.

For a new app version, verify the original APK hash and inspect changed methods before porting. Do not copy an entire old DEX into a new version. Update the hash manifest and validate that unrelated APK entries are unchanged.

Do not commit APKs, diagnostic dumps or keystores to Git. Use reviewed release assets for downloadable builds.
