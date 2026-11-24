import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminReportedProblemsScreen extends StatelessWidget {
  const AdminReportedProblemsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Reported Problems",
    description: "Manage civic complaints submitted by villagers.",
    icon: Icons.support_agent_rounded,
    sections: const ["100 total complaints • 5 new • 7 under review • 4 in progress • 84 resolved.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Review Complaint", "/admin-complaint-detail")],
  );
}
