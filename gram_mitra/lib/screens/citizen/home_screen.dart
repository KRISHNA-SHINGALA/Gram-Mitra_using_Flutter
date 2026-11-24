import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../core/demo_store.dart';
class HomeScreen extends StatefulWidget { const HomeScreen({super.key}); @override State<HomeScreen> createState() => _HomeScreenState(); }
class _HomeScreenState extends State<HomeScreen> {
  int _tab = 0;
  final _items = const [
    ('Government Schemes', Icons.account_balance_rounded, '/schemes'),
    ('Jobs & Employment', Icons.work_rounded, '/jobs'),
    ('Village Services', Icons.home_repair_service_rounded, '/services'),
    ('Report a Problem', Icons.report_problem_rounded, '/report'),
    ('Village News', Icons.campaign_rounded, '/announcements'),
    ('Notifications', Icons.notifications_active_rounded, '/notifications'),
  ];
  void _open(String route) => Navigator.pushNamed(context, route);
  @override Widget build(BuildContext context) {
    final pages = [
      ListView(padding: const EdgeInsets.all(18), children: [
        Text('Namaste, ${DemoStore.userName} 👋', style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.greenDark)),
        const SizedBox(height: 12), Card(child: ListTile(leading: const Icon(Icons.location_on, color: AppColors.green), title: const Text('My Village'), subtitle: Text('${DemoStore.village}, Rajkot, Gujarat'), trailing: TextButton(onPressed: () => _open('/select-village'), child: const Text('Change')))),
        const SizedBox(height: 14), Container(padding: const EdgeInsets.all(18), decoration: BoxDecoration(color: AppColors.greenDark, borderRadius: BorderRadius.circular(18)), child: const Text('Your village information, government schemes, jobs and civic services — all in one place.', style: TextStyle(color: Colors.white, fontSize: 18, height: 1.4))),
        const SizedBox(height: 18), const Text('Quick Services', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)), const SizedBox(height: 10),
        GridView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemCount: _items.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 1.25), itemBuilder: (context, i) => InkWell(onTap: () => _open(_items[i].$3), child: Card(child: Padding(padding: const EdgeInsets.all(14), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(_items[i].$2, color: AppColors.green, size: 32), const SizedBox(height: 10), Text(_items[i].$1, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600))]))))),
        const SizedBox(height: 18), const Text('Latest Village Updates', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        Card(child: ListTile(leading: const Icon(Icons.water_drop, color: Colors.blue), title: const Text('Water supply maintenance notice'), subtitle: const Text('Today • 7:00 AM to 10:00 AM'), onTap: () => _open('/announcement-detail'))),
        Card(child: ListTile(leading: const Icon(Icons.health_and_safety, color: AppColors.green), title: const Text('Free health check-up camp'), subtitle: const Text('Primary School • This week'), onTap: () => _open('/announcement-detail'))),
      ]),
      const Center(child: Text('Explore government schemes from Home')),
      const Center(child: Text('Find local jobs from Home')),
      const Center(child: Text('Village notifications appear here')),
      ListView(padding: const EdgeInsets.all(18), children: [const CircleAvatar(radius: 38, child: Icon(Icons.person, size: 40)), const SizedBox(height: 12), Text(DemoStore.userName, textAlign: TextAlign.center, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), Text('+91 ${DemoStore.mobile}', textAlign: TextAlign.center), const SizedBox(height: 20), ElevatedButton(onPressed: () => _open('/profile'), child: const Text('Open Profile')), OutlinedButton(onPressed: () { DemoStore.isLoggedIn = false; Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => false); }, child: const Text('Logout'))]),
    ];
    return Scaffold(appBar: AppBar(title: const Text('GramMitra'), actions: [IconButton(onPressed: () => _open('/notifications'), icon: const Icon(Icons.notifications_none)), IconButton(onPressed: () => _open('/profile'), icon: const Icon(Icons.account_circle_outlined))]), body: pages[_tab], bottomNavigationBar: NavigationBar(selectedIndex: _tab, onDestinationSelected: (i) { const routes = ['/home', '/schemes', '/jobs', '/notifications', '/profile']; if (i == 0) { setState(() => _tab = 0); } else { Navigator.pushNamed(context, routes[i]); } }, destinations: const [NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'), NavigationDestination(icon: Icon(Icons.account_balance_outlined), label: 'Schemes'), NavigationDestination(icon: Icon(Icons.work_outline), label: 'Jobs'), NavigationDestination(icon: Icon(Icons.notifications_outlined), label: 'Updates'), NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile')]));
  }
}
