import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class SavedItemsScreen extends StatelessWidget {
  const SavedItemsScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Saved Items",
    description: "Your bookmarked schemes and job opportunities.",
    icon: Icons.support_agent_rounded,
    sections: const ["Saved schemes: PMAY-G and PM-KISAN. Saved job: Data Entry Operator.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Browse Schemes", "/schemes")],
  );
}
