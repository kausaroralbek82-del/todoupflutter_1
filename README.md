# DalaAI

DalaAI is a Flutter and Firebase smart farming app for Kazakhstan. Farmers can sign in, register a farm profile, manage crop fields, view satellite-style NDVI health indicators, get AI yield forecasts, check weather/irrigation hints, and review crop market prices.

## Marking Criteria Coverage

- Sign In with Google is implemented with Firebase Auth and `google_sign_in`.
- Sign In with Email and Password is implemented with Firebase Auth.
- Registration sends Firebase email verification and writes a welcome email document to the Firestore `mail` collection for the Firebase Trigger Email extension.
- Sign Out is implemented, and session persistence is handled by `FirebaseAuth.instance.authStateChanges()`, so users stay logged in after app restart.
- Firebase Firestore is the main database for `users`, `fields`, and `mail`; the app does not rely on local storage for core data.
- The pitched main feature works end-to-end: register or sign in, add a farm field, view field health, open field details, edit field data, delete a field, and view market prices.
- The user flow matches the pitch: dashboard -> field detail -> AI forecast/health insight -> edit/delete -> market/profile.
- The app solves the pitched problem by helping farmers monitor crop health, forecast yield, and compare market prices in one app.
- The target user can complete the main task without developer help through visible buttons and forms.
- `flutter analyze` passes with no issues.
- The app uses a custom DalaAI launcher icon and Android label.
- The UI uses DalaAI dark green and amber branding instead of default Flutter styling.
- Layouts use `SafeArea`, scrolling content, responsive rows/wraps, and constrained cards to avoid overflow on different screen sizes.
- CRUD is fully implemented for fields: Create, Read, Update, and Delete.
- APK can be built and installed on Android with `flutter build apk --release`.
- The project is published to GitHub with this README.

## Firebase Collections

- `users`: `uid`, `name`, `email`, `avatar`, `farmName`, `city`, `role`, `createdAt`
- `fields`: `ownerId`, `name`, `crop`, `area`, `city`, `ndvi`, `health`, `yieldForecast`, `soilMoisture`, `weather`, `marketPrice`, `status`, `createdAt`
- `mail`: email documents used by the Firebase Trigger Email extension

## Run Locally

```powershell
flutter pub get
flutter analyze
flutter run
```

## Build APK

```powershell
flutter build apk --release
```

The release APK is created at:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Firebase Setup Notes

Enable these Firebase services before grading on a device:

- Authentication: Email/Password provider
- Authentication: Google provider
- Firestore Database
- Firebase Trigger Email extension configured to read from the `mail` collection
- Android SHA-1/SHA-256 fingerprints for Google Sign-In

## Tech Stack

- Flutter
- Firebase Auth
- Cloud Firestore
- Google Sign-In
