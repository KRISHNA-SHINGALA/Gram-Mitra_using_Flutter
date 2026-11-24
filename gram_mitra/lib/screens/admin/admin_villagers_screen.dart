import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminVillagersScreen extends StatelessWidget {
  const AdminVillagersScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Digital Panchayat Register",
    description: "View villagers and their verification status.",
    icon: Icons.support_agent_rounded,
    sections: const ["1,248 total villagers • 1,190 active profiles • 58 pending verification.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Overview", "/admin-overview")],
  );
}
