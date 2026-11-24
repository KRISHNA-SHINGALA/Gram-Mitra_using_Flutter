import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class SchemeDetailScreen extends StatelessWidget {
  const SchemeDetailScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Pradhan Mantri Awas Yojana (Gramin)",
    description: "Housing support information for eligible rural families.",
    icon: Icons.support_agent_rounded,
    sections: const ["Benefits: housing assistance and toilet incentive. Documents: Aadhaar, bank passbook, income proof and house photograph. Apply through Gram Panchayat or e-Gram centre.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Check Eligibility", "/eligibility")],
  );
}
