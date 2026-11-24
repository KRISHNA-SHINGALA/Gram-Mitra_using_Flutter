import 'package:flutter/material.dart';
import '../../widgets/info_screen.dart';

class ServicesListScreen extends StatelessWidget {
  const ServicesListScreen({super.key});
  @override
  Widget build(BuildContext context) => InfoScreen(
    title: "Village Services",
    description: "Find important public services and local government contacts.",
    icon: Icons.location_city_rounded,
    sections: const ["Health • Education • Panchayat • Bank / ATM • Water Supply • Electricity (PGVCL).", 'All information in this screen is sample content for the static GramMitra demo.'],
    actions: const [PageAction("View Health Centre", "/service-detail")],
  );
}
