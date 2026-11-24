import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminVillageOverviewScreen extends StatelessWidget {
  const AdminVillageOverviewScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Village Overview",
    description: "Review Gram Panchayat information and village statistics.",
    icon: Icons.location_city_rounded,
    sections: const ["Adarsh Gram • Lodhika, Rajkot • Established 1962 • PIN 360035 • 1,248 residents.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Manage Villagers", "/admin-villagers")],
  );
}
