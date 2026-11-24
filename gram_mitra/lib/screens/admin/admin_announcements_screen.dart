import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminAnnouncementsScreen extends StatelessWidget {
  const AdminAnnouncementsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Announcements Management",
    description: "Create and manage official village announcements.",
    icon: Icons.campaign_rounded,
    sections: const ["5 published • 3 drafts • 1 expired. Manage meeting notices, water updates and public programmes.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Create Announcement", "/create-announcement")],
  );
}
