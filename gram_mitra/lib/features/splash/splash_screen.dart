import 'dart:async';

import 'package:flutter/material.dart';

import '../language/language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LanguageScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // GramMitra Logo
              Image.asset(
                'assets/logo/gram_mitra_app_logo.png',
                width: 170,
                height: 170,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 24),

              // App Name
              const Text(
                'GramMitra',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                  letterSpacing: 0.5,
                ),
              ),

              const SizedBox(height: 10),

              // Tagline
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'મારું ગામ • મારી માહિતી • મારું ભવિષ્ય',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
              ),

              const SizedBox(height: 45),

              // Loading Indicator
              const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF2E7D32),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              const Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}