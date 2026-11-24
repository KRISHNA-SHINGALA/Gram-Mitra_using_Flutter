import 'package:flutter/material.dart';
import 'screens/setup/splash_screen.dart';
import 'screens/setup/language_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/auth/otp_screen.dart';
import 'screens/setup/select_village_screen.dart';
import 'screens/setup/confirm_village_screen.dart';
import 'screens/citizen/home_screen.dart';
import 'screens/citizen/scheme_list_screen.dart';
import 'screens/citizen/scheme_detail_screen.dart';
import 'screens/citizen/jobs_list_screen.dart';
import 'screens/citizen/announcements_screen.dart';
import 'screens/citizen/services_list_screen.dart';
import 'screens/citizen/report_problem_screen.dart';
import 'screens/citizen/complaint_tracking_screen.dart';
import 'screens/citizen/notifications_screen.dart';
import 'screens/citizen/profile_screen.dart';
import 'screens/citizen/saved_items_screen.dart';
import 'screens/citizen/job_detail_screen.dart';
import 'screens/citizen/eligibility_screen.dart';
import 'screens/citizen/service_detail_screen.dart';
import 'screens/citizen/announcement_detail_screen.dart';
import 'screens/admin/admin_login_screen.dart';
import 'screens/admin/admin_village_verification_screen.dart';
import 'screens/admin/admin_dashboard_screen.dart';
import 'screens/admin/admin_village_overview_screen.dart';
import 'screens/admin/admin_announcements_screen.dart';
import 'screens/admin/create_announcement_screen.dart';
import 'screens/admin/admin_notifications_screen.dart';
import 'screens/admin/admin_complaint_detail_screen.dart';
import 'screens/admin/admin_reported_problems_screen.dart';
import 'screens/admin/admin_villagers_screen.dart';
import 'screens/admin/admin_services_screen.dart';
import 'screens/admin/admin_jobs_screen.dart';
import 'screens/admin/admin_profile_screen.dart';
import 'screens/admin/admin_final_verification_screen.dart';

class AppRoutes {
  static const initial = '/';
  static Map<String, WidgetBuilder> get routes => {
    '/': (_) => const SplashScreen(),
    '/language': (_) => const LanguageScreen(),
    '/login': (_) => const LoginScreen(),
    '/register': (_) => const RegisterScreen(),
    '/forgot': (_) => const ForgotPasswordScreen(),
    '/otp': (_) => const OtpScreen(),
    '/select-village': (_) => const SelectVillageScreen(),
    '/confirm-village': (_) => const ConfirmVillageScreen(),
    '/home': (_) => const HomeScreen(),
    '/schemes': (_) => const SchemeListScreen(),
    '/scheme-detail': (_) => const SchemeDetailScreen(),
    '/jobs': (_) => const JobsListScreen(),
    '/announcements': (_) => const AnnouncementsScreen(),
    '/services': (_) => const ServicesListScreen(),
    '/report': (_) => const ReportProblemScreen(),
    '/complaint-tracking': (_) => const ComplaintTrackingScreen(),
    '/notifications': (_) => const NotificationsScreen(),
    '/profile': (_) => const ProfileScreen(),
    '/saved': (_) => const SavedItemsScreen(),
    '/job-detail': (_) => const JobDetailScreen(),
    '/eligibility': (_) => const EligibilityScreen(),
    '/service-detail': (_) => const ServiceDetailScreen(),
    '/announcement-detail': (_) => const AnnouncementDetailScreen(),
    '/admin-login': (_) => const AdminLoginScreen(),
    '/admin-verify': (_) => const AdminVillageVerificationScreen(),
    '/admin-dashboard': (_) => const AdminDashboardScreen(),
    '/admin-overview': (_) => const AdminVillageOverviewScreen(),
    '/admin-announcements': (_) => const AdminAnnouncementsScreen(),
    '/create-announcement': (_) => const CreateAnnouncementScreen(),
    '/admin-notifications': (_) => const AdminNotificationsScreen(),
    '/admin-complaint-detail': (_) => const AdminComplaintDetailScreen(),
    '/admin-problems': (_) => const AdminReportedProblemsScreen(),
    '/admin-villagers': (_) => const AdminVillagersScreen(),
    '/admin-services': (_) => const AdminServicesScreen(),
    '/admin-jobs': (_) => const AdminJobsScreen(),
    '/admin-profile': (_) => const AdminProfileScreen(),
    '/admin-final-verify': (_) => const AdminFinalVerificationScreen(),
  };
}
