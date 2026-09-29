# Publication scope

The public-facing repository contains patch sources, rebuild tools, documentation and a project-signed APK. It does not include tester logs, app-data backups, personal media, Wi-Fi credentials, proxy credentials or private signing material.

Before publication, tracked files, reachable Git history, release descriptions, release assets and the APK signing certificate were reviewed. Known tester identifiers and credential values were checked without publishing the search values. Patched APK entry contents were compared with the matching original package.

The APK includes the original vendor application, bundled SDKs and vendor metadata. This review does not certify the vendor app as tracker-free or prove the absence of every possible sensitive string. The project signing certificate and the GitHub repository owner's public account remain visible by design.

Local folders named `private`, `artifacts`, `build` and `tools` are excluded from Git. An ignore rule alone is not a privacy audit: review staged changes and uploaded assets before every release.
