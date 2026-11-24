import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class SchemeListScreen extends StatelessWidget {
  const SchemeListScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Government Schemes",
    description: "Find government schemes and assistance available to villagers.",
    icon: Icons.account_balance_rounded,
    sections: const ["Pradhan Mantri Awas Yojana (Gramin) • Housing assistance up to ₹1,20,000.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("View Scheme Details", "/scheme-detail")],
  );
}
