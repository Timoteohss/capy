# Eaglemetry

Eaglemetry is a fork of Capy Energy. It records battery, trip, charging,
and telemetry history on an electric Geely head unit, and shows it on the
phone next to it. Two apps share two Dart packages:

- **Car app** (repository root, Flutter + native Kotlin): runs on the car's
  Android Automotive head unit, collects vehicle signals in a foreground
  service, stores them in Room, and serves them to the phone over the local
  network.
- **Eaglemetry Companion** (`apps/companion/`, Flutter): runs on Android and iOS,
  pairs with the car over a six-digit code, pulls sessions over Wi-Fi, and
  uploads them to your own Supabase project when you configure one.

Shared code lives in `packages/telemetry_core` (track encoding, physics,
sync protocol) and `packages/capy_ui` (design system, see
`packages/capy_ui/DESIGN.md`).

## Origin and license

Eaglemetry is derived from **Capy Energy**, created by **Timoteo Sousa**.
The original copyright notice is preserved:
Copyright 2026 Timoteo Sousa <timoteohss@gmail.com>.

This project remains licensed under the [Apache License 2.0](LICENSE).
The original license and copyright notices are unchanged.

This initial rebrand changes the displayed app names and user-facing text
to **Eaglemetry** and **Eaglemetry Companion**, with the approved eagle icon.
The source artwork and regeneration steps are in [assets/branding](assets/branding/README.md).
Technical identifiers (`capy_energy`, `capy_ui`, `capy_companion`, and
`com.timhss.*`), database names, and integrations remain unchanged.

## What car and head unit you need

- A Geely electric vehicle whose head unit runs Android Automotive with
  `CarPropertyManager` access (developed against Flyme Auto).
- The vehicle signal map in
  `android/app/src/main/kotlin/com/timhss/capyenergy/profile/`
  (`GeelyProfile`, `GeelyDeclarations`, `GeelyProperties`) names the VHAL
  ids this car publishes. Another car needs its own profile there.
- Minimum Android version: `minSdk = 28`. The build targets arm64 only.
- The head unit must accept the platform-signed APK over adb
  (`scripts/install.sh`); no system partition write, no remount, no reboot.

Without the car, the Flutter UI still runs in mock mode (below) for UI
work, with synthetic data.

## Build the car app

Requirements: Flutter 3.44.6, Android SDK, Java 17.

```bash
flutter pub get
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`.

Install on the connected head unit:

```bash
scripts/install.sh
scripts/install.sh --device 10.10.10.117:5555
scripts/install.sh --no-build
```

`adb install -r` keeps app data (settings, telemetry database). A version
downgrade is refused; bump `version:` in `pubspec.yaml` first.

Mock UI without a car:

```bash
flutter run -d chrome --dart-define=CAPY_MOCK_TELEMETRY=true
flutter run -d chrome \
  --dart-define=CAPY_MOCK_TELEMETRY=true \
  --dart-define=CAPY_MOCK_CHARGING=true
```

All mock coordinates are synthetic (see `lib/core/mock_telemetry_data.dart`).

## How live data flows (Roadcast + VHAL)

Live trip and charge screens read CAN signals straight from Roadcast at
60 Hz through the native client into a bounded in-RAM cache — never
through Room and never through the generic telemetry event stream. The
one exception is vehicle speed, which arrives over a narrow EventChannel
from `CarPropertyManager`. VHAL properties stay on `CarPropertyManager`
because Roadcast does not expose properties. The privileged app installs
and supervises the `roadcastd` daemon; only the external daemon (not the
APK-bundled client library) can be updated over the air from the public
Roadcast `edge` channel.

## How storage works (Room)

The car keeps telemetry in a Room database (schema v35,
`databases/geely_telemetry.db`): `session` rows for trips, charges, and
parked sessions; `interval` rows with one minute of measured energy and
distance each; `sample` rows with deadband-gated sparse signal readings;
`telemetry_events` for state and lifecycle transitions; plus battery
cycles, costs, places, trip segments, preferences, journeys, and sync
cursors. Raw detail expires (frames/events are deleted in 2,000-row
chunks) while per-minute energy buckets and session aggregates survive
retention, so old trips keep their charts on a thousandth of the storage
a full frame history would cost.

## Versioning and signing

`version:` in `pubspec.yaml` (`X.Y.Z+B`, `B` = Android `versionCode`) is
the single source of truth; the release workflow bumps it from
conventional-commit prefixes and sets the build number to the
repository's total commit count (monotonic, never goes down). Release and
debug builds sign with the public AOSP test platform key (alias
`platform`, passwords `android`) committed under `refs/aosp-security/`;
generate the keystore on a fresh clone with
`scripts/generate_platform_keystore.sh`. The updater only installs an APK
whose package name, size, SHA-256, version, and signing certificate all
validate.

## Build the companion app

```bash
cd apps/companion
flutter pub get
flutter run --dart-define-from-file=.env
flutter build apk --release --dart-define-from-file=.env
```

Details in `apps/companion/README.md`.

## Configure your own Supabase account (optional)

Without credentials both apps run fully local: pairing, sync, and history
never needed a server. To enable the cloud replica, create your own
Supabase project and point the builds at it.

Car app (`android/local.properties`, template at
`android/local.properties.example`):

```text
SUPABASE_URL=https://<project-ref>.supabase.co
SUPABASE_ANON_KEY=<anon key>
SUPABASE_FUNCTIONS_URL=https://<project-ref>.supabase.co/functions/v1
```

Companion app (`.env`, template at `.env.example`):

```text
SUPABASE_URL=https://<project-ref>.supabase.co
SUPABASE_PUBLISHABLE_KEY=<publishable key>
```

The cloud-sync gate defaults ON in both apps; with empty credentials
nothing leaves the device.

Apply the database and deploy the functions from this repository:

```bash
supabase db push
supabase functions deploy device-pairing
supabase functions deploy privacy
```

Schema and policies live in `supabase/migrations/` (single-file copy in
`supabase/schema_full.sql`); edge functions in `supabase/functions/`.
`supabase/README.md` documents the tables, the row-level-security model,
and the SQL tests under `supabase/tests/` (run with `psql` against a
scratch database).

## Where Roadcast comes from (you fetch it yourself)

Live CAN data arrives through two arm64 binaries that this repository
deliberately does **not** distribute:

- `android/app/src/main/assets/roadcastd` (daemon)
- `android/app/src/main/jniLibs/arm64-v8a/libroadcast_client.so` (client)

They are local-only build inputs (see `.gitignore`). Both are built from
**Roadcast**, a separate public project under Apache 2.0:
https://github.com/Timoteohss/roadcast.

Get them:

```bash
git clone https://github.com/Timoteohss/roadcast
# build for android-arm64-v8a, API 28 (see the Roadcast README for its build)
# then copy both artifacts into this tree:
scripts/update_roadcast_client.sh --roadcast-root <roadcast checkout>
```

The script installs the client library to
`android/app/src/main/jniLibs/arm64-v8a/libroadcast_client.so` and the
daemon to `android/app/src/main/assets/roadcastd`, and prints both
SHA-256 checksums so you can confirm what landed. Without the client
library the Android build stops at CMake with a message naming the
missing file; without the daemon asset the app's Roadcast status
reports the missing binary instead of failing silently.

The head unit also offers over-the-air Roadcast updates from the public
Roadcast `edge` release channel
(`android/.../roadcast/RoadcastUpdateManager.kt`).

## Self-update channel

The car app checks a manifest URL once a minute for a newer signed APK and
installs it after verifying package name, size, SHA-256, version, and
signing certificate. The URL is **not** in the code: configure it per
build in `android/local.properties`
(template: `android/local.properties.example`):

```text
APP_UPDATE_MANIFEST_URL=https://github.com/<owner>/<releases>/releases/latest/download/latest.json
CHARGE_CONTROL_MANIFEST_URL=https://raw.githubusercontent.com/<owner>/<releases>/main/geelychargecontrol-latest.json
```

Empty (the default) disables the channel with a clear error. Generate the
manifest with `scripts/create_release_manifest.sh`; the release pipeline
lives in `.github/workflows/release.yml` (or `scripts/release_manual.sh`
for a manual run). The manifest parser only accepts HTTPS GitHub release
asset URLs ending in `.apk`.

## A note on flutter_blue_plus

The companion app uses
[`flutter_blue_plus`](https://pub.dev/packages/flutter_blue_plus)
(`apps/companion/pubspec.yaml`) for the phone-to-car Bluetooth link. Its
license is free for individuals, small teams, students, non-profits, and
educators; only companies with 50 or more employees pay. Older versions
stay under the free license permanently. If that still does not fit your
case, the BLE transport is one seam
(`apps/companion/lib/ble/ble_transport.dart`) and can be replaced.

## Tests

```bash
flutter test
(cd packages/capy_ui && flutter test)
(cd packages/telemetry_core && flutter test)
(cd apps/companion && flutter test)
(cd android && ./gradlew testDebugUnitTest)
```

## Docs

- `CONTEXT.md` — domain model in one page.
- `docs/adr/` — architecture decisions.
- `supabase/README.md` — cloud schema and functions.
- `apps/companion/README.md` — companion build and account setup.
