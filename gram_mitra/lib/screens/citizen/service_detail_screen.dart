import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Primary Health Centre (PHC)",
    description: "Local health services and contact information.",
    icon: Icons.support_agent_rounded,
    sections: const ["Adarsh Gram • Open 9:00 AM to 5:00 PM • General check-up, vaccination, first aid and health advice. Emergency ambulance: 108.", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("Back to Services", "/services")],
  );
}
