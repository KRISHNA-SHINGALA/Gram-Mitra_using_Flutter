import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class EligibilityScreen extends StatelessWidget {
  const EligibilityScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Scheme Eligibility Checker",
    description: "Answer simple questions for a preliminary eligibility estimate.",
    icon: Icons.account_balance_rounded,
    sections: const ["This demo checks age and basic household details only. It does not submit an official application or guarantee eligibility.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Scheme", "/scheme-detail")],
  );
}
