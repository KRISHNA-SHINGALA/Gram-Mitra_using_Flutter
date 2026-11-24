import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "My Profile",
    description: "Manage your personal and village information.",
    icon: Icons.support_agent_rounded,
    sections: const ["Name: Ramesh Patel • Mobile: +91 98765 43210 • Village: Adarsh Gram • Profile status: 100% verified.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("View Saved Items", "/saved")],
  );
}
