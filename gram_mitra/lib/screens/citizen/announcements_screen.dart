import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AnnouncementsScreen extends StatelessWidget {
  const AnnouncementsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Village News & Announcements",
    description: "Important updates published for your Gram Panchayat.",
    icon: Icons.campaign_rounded,
    sections: const ["Water supply maintenance • Gram Sabha meeting • Free health check-up camp.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Read Announcement", "/announcement-detail")],
  );
}
