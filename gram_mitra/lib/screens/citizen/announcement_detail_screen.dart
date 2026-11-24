import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AnnouncementDetailScreen extends StatelessWidget {
  const AnnouncementDetailScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Gram Sabha Meeting Notice",
    description: "Official announcement from Adarsh Gram Panchayat.",
    icon: Icons.support_agent_rounded,
    sections: const ["Meeting date: 15 September 2026 • Time: 10:00 AM • Place: Gram Panchayat Office. Topics include village roads, water supply and development work.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Announcements", "/announcements")],
  );
}
