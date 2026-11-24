import 'package:flutter/material.dart';
import '../core/app_theme.dart';

class PageAction {
  final String label;
  final String route;
  final IconData icon;
  const PageAction(this.label, this.route, {this.icon = Icons.arrow_forward_rounded});
}

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.title, required this.description,
    this.sections = const [], this.actions = const [], this.icon = Icons.apps_rounded});
  final String title;
  final String description;
  final List<String> sections;
  final List<PageAction> actions;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GramMitra'), leading: IconButton(
        icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.maybePop(context))),
      body: SafeArea(child: ListView(padding: const EdgeInsets.fromLTRB(18, 8, 18, 28), children: [
        Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [AppColors.greenDark, AppColors.green]),
          borderRadius: BorderRadius.circular(22)), child: Row(children: [
            CircleAvatar(backgroundColor: AppColors.mint, radius: 28,
              child: Icon(icon, color: AppColors.greenDark, size: 28)),
            const SizedBox(width: 14), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5), Text(description, style: const TextStyle(color: Colors.white70, height: 1.35)),
            ])),
          ])),
        const SizedBox(height: 18),
        if (sections.isNotEmpty) ...[
          const Text('Information', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.greenDark)),
          const SizedBox(height: 8),
          ...sections.map((item) => Card(margin: const EdgeInsets.only(bottom: 9), child: Padding(
            padding: const EdgeInsets.all(15), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Icon(Icons.check_circle_rounded, color: AppColors.green, size: 20),
              const SizedBox(width: 10), Expanded(child: Text(item, style: const TextStyle(height: 1.4))),
            ])))),
        ],
        if (actions.isNotEmpty) ...[
          const SizedBox(height: 8), const Text('Continue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ...actions.map((a) => Padding(padding: const EdgeInsets.only(bottom: 10), child: ElevatedButton.icon(
            onPressed: () => Navigator.pushNamed(context, a.route), icon: Icon(a.icon), label: Text(a.label)))),
        ],
        const SizedBox(height: 12),
        const Center(child: Text('GramMitra • Static demo application', style: TextStyle(color: AppColors.muted, fontSize: 12))),
      ])),
    );
  }
}
