import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminComplaintDetailScreen extends StatelessWidget {
  const AdminComplaintDetailScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Complaint Details",
    description: "Review a citizen complaint and its progress.",
    icon: Icons.support_agent_rounded,
    sections: const ["Complaint #GM10245 • Road and infrastructure • Ward 3 • Status: Work in Progress. Update status in this demo using the action below.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Reported Problems", "/admin-problems")],
  );
}
