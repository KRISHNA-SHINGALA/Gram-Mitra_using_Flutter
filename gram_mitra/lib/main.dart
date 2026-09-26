import 'package:flutter/material.dart';
import 'package:gram_mitra/features/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GramMitra',
      home: const SplashScreen(),
    );
  }
}

// core/       → common app-level utilities
// features/   → actual GramMitra features/screens
// models/     → data structures
// services/   → Firebase/API/database logic
// theme/      → colors/fonts/theme
// widgets/    → reusable UI
// routing/    → navigation
// localization/ → Gujarati/Hindi/English
// main.dart   → app starting point

// ------------------------------------------------------

//   lib/
//   │
//   ├── core/
//   │   ├── constants/
//   │   ├── utils/
//   │   └── exceptions/
//   │
//   ├── features/
//   │   │
//   │   ├── auth/
//   │   │   ├── login/
//   │   │   ├── register/
//   │   │   ├── otp/
//   │   │   └── forgot_password/
//   │   │
//   │   ├── village/
//   │   │   ├── select_village/
//   │   │   └── confirm_village/
//   │   │
//   |   ├── splash
//   │   │
//   │   ├── schemes/
//   │   │   ├── scheme_list/
//   │   │   ├── scheme_details/
//   │   │   └── eligibility/
//   │   │
//   │   ├── jobs/
//   │   │   ├── job_list/
//   │   │   └── job_details/
//   │   │
//   │   ├── announcements/
//   │   │   ├── announcement_list/
//   │   │   └── announcement_details/
//   │   │
//   │   ├── village_services/
//   │   │   ├── service_list/
//   │   │   └── service_details/
//   │   │
//   │   ├── complaints/
//   │   │   ├── report_problem/
//   │   │   └── problem_tracking/
//   │   │
//   │   ├── notifications/
//   │   ├── profile/
//   │   ├── saved/
//   │   │
//   │   └── admin/
//   │       ├── login/
//   │       ├── otp/
//   │       ├── village_verification/
//   │       ├── dashboard/
//   │       ├── village_overview/
//   │       ├── announcements/
//   │       ├── notifications/
//   │       ├── problems/
//   │       ├── villagers/
//   │       ├── services/
//   │       ├── jobs/
//   │       └── profile/
//   │
//   ├── localization/
//   │
//   ├── models/
//   │
//   ├── routing/
//   │
//   ├── services/
//   │
//   ├── theme/
//   │
//   ├── widgets/
//   │
//   └── main.dart