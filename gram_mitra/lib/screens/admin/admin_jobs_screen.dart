import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminJobsScreen extends StatelessWidget {
  const AdminJobsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Jobs Management",
    description: "Manage local employment opportunities and vacancies.",
    icon: Icons.work_rounded,
    sections: const ["8 active jobs • 3 drafts • 5 expired. Data Entry Operator, Agriculture Assistant and Solar Technician.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Admin Profile", "/admin-profile")],
  );
}
