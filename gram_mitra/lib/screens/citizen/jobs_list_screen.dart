import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class JobsListScreen extends StatelessWidget {
  const JobsListScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "GramMitra Jobs Portal",
    description: "Explore nearby rural employment opportunities.",
    icon: Icons.work_rounded,
    sections: const ["Data Entry Operator • ₹12,000–₹18,000/month • Full-time.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("View Job Details", "/job-detail")],
  );
}
