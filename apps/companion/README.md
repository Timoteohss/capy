# Eaglemetry Companion

Phone Flutter app for Eaglemetry. Android and iOS.

Eaglemetry Companion is derived from the Capy Energy companion app.
See the root [README](../../README.md#origin-and-license) for attribution
and the preserved [Apache License 2.0](../../LICENSE).

The home screen takes the 6-digit car pairing code. The local archive
and the sync client are Dart and run without a list of sessions yet.

The car app lives at the repository root. This app shares
`packages/telemetry_core` and `packages/capy_ui`. It has no vehicle
access.

Dart package: `capy_companion`. Native id:
`com.timhss.capyenergy.companion`.

## Run

From the repository root:

```bash
flutter pub get
```

Then:

```bash
cd apps/companion
flutter run --dart-define-from-file=.env
```

## The account server (optional)

Copy `.env.example` to `.env` and fill in the two values from your own
Supabase project's panel, under Project Settings > API. `.env` is not
committed. See the root README ("Configure your own Supabase account")
for the schema, migrations, and edge functions this repository ships.

```bash
cp .env.example .env
```

Pass the file to every command that compiles the app — `run`, `build apk`,
`build ios`:

```bash
flutter build apk --release --dart-define-from-file=.env
```

The values are read by `String.fromEnvironment`, so they are compile-time
constants. A build made without them is not a broken build: both are
empty, the account gateway is not created, and the first-run journey skips
the login step. Pairing, sync and history never needed a server.

## Companion beta links (optional)

The car's sync screen can show a QR code pointing testers at your
companion builds. The links are **not** in the code: pass them as
compile-time defines when you build the car app, or leave them empty and
the card shows a placeholder.

```bash
flutter build apk --release \
  --dart-define=COMPANION_ANDROID_URL=https://example.com/companion-android \
  --dart-define=COMPANION_IOS_URL=https://example.com/companion-ios \
  --dart-define=COMPANION_DIRECT_APK_URL=https://example.com/companion.apk
```

## Test

```bash
cd apps/companion
flutter test
```

Test real cloud sync end to end (gate ON for both apps), from repo root:

```bash
scripts/build_cloud_sync_test.sh
```

## A note on flutter_blue_plus

This app uses
[`flutter_blue_plus`](https://pub.dev/packages/flutter_blue_plus) for the
phone-to-car Bluetooth link. Its license is free for individuals, small
teams, students, non-profits, and educators; only companies with 50 or
more employees pay. Older versions stay under the free license
permanently. The BLE transport is one seam (`lib/ble/ble_transport.dart`)
and can be replaced if that still does not fit your case.
