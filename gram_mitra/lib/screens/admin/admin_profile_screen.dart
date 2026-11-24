import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminProfileScreen extends StatelessWidget {
  const AdminProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Panchayat Admin Profile",
    description: "Manage the official administrator account and portal settings.",
    icon: Icons.support_agent_rounded,
    sections: const ["Rameshbhai Patel • Sarpanch • Adarsh Gram Panchayat • Rajkot District • Language: Gujarati.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Dashboard", "/admin-dashboard")],
  );
}
