# QolKol

QolKol is a Flutter and Firebase home-services marketplace for finding verified local workers such as plumbers, electricians, cleaners, and painters. Customers can sign in, browse workers, make a booking, edit it, rate it, cancel it, and manage their profile.

## Marking Criteria Coverage

- Firebase Authentication supports email/password registration and sign-in.
- Google Sign-In is implemented in the app code. In Firebase Console, Google Auth must be enabled and the Android SHA certificate must be added for a real device build.
- Registration sends Firebase email verification and queues a `Welcome` email in the Firestore `mail` collection.
- Successful sign-in queues a `You signed in successfully` email in the Firestore `mail` collection.
- Session persistence is handled by `FirebaseAuth.instance.authStateChanges()`, so users stay signed in after app restart until they sign out.
- Firestore is the main database for users, workers, bookings, ratings, and triggered email documents.
- Main feature works end-to-end: browse verified workers, create a booking, view bookings, edit booking details, rate a booking, and delete/cancel it.
- CRUD is implemented for bookings: create, read, update, and delete.
- The UI uses QolKol branding, a custom dark theme, and a custom Android launcher icon.
- Android APK output is generated under `android/app/build/outputs/flutter-apk/` after running a Flutter build.

## Firebase Collections

- `users`: `uid`, `name`, `email`, `avatar`, `role`, `createdAt`
- `workers`: worker profile, category, city, price, rating, availability, avatar
- `bookings`: customer booking details, worker reference, date, time, address, status, rating
- `mail`: email documents used by the Firebase Trigger Email extension

## Run Locally

```powershell
flutter pub get
flutter analyze
flutter test
flutter run
```

## Build APK

```powershell
flutter build apk --release
```

The release APK will be created at:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## Firebase Setup Notes

Enable these Firebase services before grading on a device:

- Authentication: Email/Password
- Authentication: Google provider
- Firestore Database
- Firebase Trigger Email extension, configured to read from the `mail` collection
- Android app SHA-1/SHA-256 fingerprints for Google Sign-In

## Tech Stack

- Flutter
- Firebase Auth
- Cloud Firestore
- Google Sign-In

# todoapp
