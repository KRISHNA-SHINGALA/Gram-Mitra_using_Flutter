import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Notifications",
    description: "Updates about schemes, complaints, jobs and village announcements.",
    icon: Icons.support_agent_rounded,
    sections: const ["New government scheme available • Complaint #GM10245 status updated • New local job opportunity.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Open Latest Announcement", "/announcement-detail")],
  );
}
