import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class AdminServicesScreen extends StatelessWidget {
  const AdminServicesScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Village Services Management",
    description: "Manage public service directory information.",
    icon: Icons.location_city_rounded,
    sections: const ["18 total services • 16 active • 2 temporarily closed. Update health, education, water and electricity service details.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Manage Jobs", "/admin-jobs")],
  );
}
