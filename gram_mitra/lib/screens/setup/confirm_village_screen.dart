import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../core/demo_store.dart';

class ConfirmVillageScreen extends StatelessWidget {
  const ConfirmVillageScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Confirm Village')),
    body: ListView(padding: const EdgeInsets.all(18), children: [
      const Icon(Icons.verified_rounded, color: AppColors.green, size: 58),
      const SizedBox(height: 12),
      const Text('Is this your village?', textAlign: TextAlign.center,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.greenDark)),
      const SizedBox(height: 18),
      Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Selected Village', style: TextStyle(color: AppColors.muted)),
        const SizedBox(height: 8),
        Text(DemoStore.village, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const Divider(height: 24),
        const ListTile(contentPadding: EdgeInsets.zero, leading: Icon(Icons.location_city, color: AppColors.green), title: Text('Taluka'), subtitle: Text('Lodhika')),
        const ListTile(contentPadding: EdgeInsets.zero, leading: Icon(Icons.map, color: AppColors.green), title: Text('District / State'), subtitle: Text('Rajkot, Gujarat')),
        const ListTile(contentPadding: EdgeInsets.zero, leading: Icon(Icons.local_post_office, color: AppColors.green), title: Text('PIN Code'), subtitle: Text('360001')),
      ]))),
      const SizedBox(height: 14),
      ElevatedButton(onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false), child: const Text('Yes, This Is My Village')),
      OutlinedButton(onPressed: () => Navigator.pop(context), child: const Text('Choose Another Village')),
      const SizedBox(height: 10),
      const Text('You can change your village later from your profile. This selection only personalizes the sample information.', textAlign: TextAlign.center, style: TextStyle(color: AppColors.muted)),
    ]),
  );
}
