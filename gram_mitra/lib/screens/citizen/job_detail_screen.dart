import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class JobDetailScreen extends StatelessWidget {
  const JobDetailScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Data Entry Operator",
    description: "Local service centre recruitment information.",
    icon: Icons.support_agent_rounded,
    sections: const ["Salary: ₹12,000–₹18,000/month • Full-time • Qualification: 12th pass and basic computer knowledge. Keep Aadhaar, marksheet and CCC certificate ready.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Jobs", "/jobs")],
  );
}
