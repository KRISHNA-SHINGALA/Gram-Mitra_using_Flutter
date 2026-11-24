import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'core/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GramMitraApp());
}

class GramMitraApp extends StatelessWidget {
  const GramMitraApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GramMitra',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      initialRoute: AppRoutes.initial,
      routes: AppRoutes.routes,
    );
  }
}
