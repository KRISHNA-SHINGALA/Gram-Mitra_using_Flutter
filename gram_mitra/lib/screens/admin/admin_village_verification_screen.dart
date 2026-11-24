import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminVillageVerificationScreen extends StatelessWidget {
  const AdminVillageVerificationScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Admin Village Verification",
    description: "Verify the Gram Panchayat connected to the administrator account.",
    icon: Icons.location_city_rounded,
    sections: const ["Rameshbhai Patel • Sarpanch • ID: GP-GJ-RJK-2024 • Adarsh Gram, Rajkot.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Continue to Final Verification", "/admin-final-verify")],
  );
}
