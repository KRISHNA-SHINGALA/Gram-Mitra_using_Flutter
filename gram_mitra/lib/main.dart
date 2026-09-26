import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/app_localizations.dart';
import 'features/splash/splash_screen.dart';

void main() {
  runApp(const GramMitraApp());
}

class GramMitraApp extends StatefulWidget {
  const GramMitraApp({super.key});

  @override
  State<GramMitraApp> createState() => _GramMitraAppState();
}

class _GramMitraAppState extends State<GramMitraApp> {
  Locale _locale = const Locale('gu');

  void changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GramMitra',

      locale: _locale,

      supportedLocales: const [
        Locale('gu'),
        Locale('hi'),
        Locale('en'),
      ],

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
        ),
      ),

      home: SplashScreen(
        onLanguageChanged: changeLanguage,
      ),
    );
  }
}