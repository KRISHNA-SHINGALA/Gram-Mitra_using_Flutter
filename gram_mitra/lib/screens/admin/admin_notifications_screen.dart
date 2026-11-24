import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminNotificationsScreen extends StatelessWidget {
  const AdminNotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Notification Management",
    description: "Review and prepare messages for village residents.",
    icon: Icons.support_agent_rounded,
    sections: const ["32 notifications • 8 sent today • 24 sent this week • 98% delivery rate (sample data).", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("View Reported Problems", "/admin-problems")],
  );
}
