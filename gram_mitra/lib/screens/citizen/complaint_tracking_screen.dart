import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class ComplaintTrackingScreen extends StatelessWidget {
  const ComplaintTrackingScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Verified Complaint Tracking",
    description: "Follow the progress of a complaint submitted by a citizen.",
    icon: Icons.support_agent_rounded,
    sections: const ["Complaint #GM10245 • Road and repair • Status: Work in Progress. Stages: Submitted, Under Review, Work Started, Resolved.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Open Complaint Details", "/complaint-detail")],
  );
}
