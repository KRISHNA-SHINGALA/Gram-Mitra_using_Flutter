# GramMitra – Flutter Static Demo

A beginner-friendly Flutter implementation of the 37 screens shown in `GramMitra.pdf`.

## Requirements

- Flutter SDK (Dart SDK is included with Flutter)
- Android Studio + Android SDK for Android emulator/device, or Chrome for web

## First-time setup

Open this folder in VS Code / Android Studio. Android and Web runner folders are already included. Run:

```bash
flutter pub get
```

## Run on Android

Start an Android emulator or connect your phone with USB debugging enabled, then run:

```bash
flutter run
```

For Chrome:

```bash
flutter run -d chrome
```

## Demo login details

**Citizen login**
- Mobile: `9876500000`
- Password: `Gram@1234`

**Admin login**
- Mobile: `9876500000`
- Password: `Gram@1234`

**Demo OTP:** `123456`

You can also register a new demo account. Registration/login data is stored only in app memory and is cleared when the app is restarted.

## Project structure

```text
lib/
  main.dart
  app_routes.dart
  core/
    app_theme.dart
    demo_store.dart
  widgets/
    brand_header.dart
    info_screen.dart
  screens/
    setup/       # Splash, language, village selection and confirmation
    auth/        # Login, registration, forgot password and OTP
    citizen/     # Citizen home and citizen portal pages
    admin/       # Admin login, verification and admin portal pages
```

## Important notes

- This is a **static/demo application**. It does not connect to Firebase, SQL, an API, SMS, GPS, or any government portal.
- Scheme, job, complaint, village and contact information is sample content for UI demonstration only. Do not treat it as verified official information.
- Form validation is active. Password must contain at least 8 characters, mobile number must contain exactly 10 digits, and confirm password must match.
- Demo OTP is fixed to `123456`; no SMS is sent.
- All 37 PDF screen flows have corresponding Dart screen files and named navigation routes.

## PDF screen mapping (37 pages)

1. Splash • 2. Language • 3. Login • 4. Registration • 5. Forgot Password • 6. OTP Verification • 7. Select Village • 8. Confirm Village • 9. Citizen Home • 10. Scheme List • 11. Scheme Details • 12. Jobs List • 13. Village Announcements • 14. Village Services • 15. Report Problem • 16. Complaint Tracking • 17. Notifications • 18. Citizen Profile • 19. Saved Items • 20. Job Details • 21. Eligibility Checker • 22. Service Details • 23. Announcement Details • 24. Admin Login • 25. Admin Village Verification • 26. Admin Dashboard • 27. Village Overview • 28. Admin Announcements • 29. Create Announcement • 30. Admin Notifications • 31. Admin Complaint Details • 32. Reported Problems • 33. Villagers Register • 34. Services Management • 35. Jobs Management • 36. Admin Profile • 37. Final Admin Verification.
