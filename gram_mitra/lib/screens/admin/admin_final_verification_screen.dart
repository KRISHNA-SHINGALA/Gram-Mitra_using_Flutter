import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminFinalVerificationScreen extends StatelessWidget {
  const AdminFinalVerificationScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Final Admin Verification",
    description: "Confirm the official village link for the Sarpanch/Admin account.",
    icon: Icons.support_agent_rounded,
    sections: const ["Adarsh Gram • Lodhika Taluka • Rajkot District • Gujarat • Official Gram Panchayat connection.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Complete Verification", "/admin-dashboard")],
  );
}
