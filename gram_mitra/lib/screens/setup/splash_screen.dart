import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../widgets/brand_header.dart';
class SplashScreen extends StatelessWidget { const SplashScreen({super.key}); @override Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Center(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  const BrandHeader(subtitle: 'मेरा गाँव • मेरी जानकारी • मेरा भविष्य'), const SizedBox(height: 40),
  const Text('सशक्त गाँव, समृद्ध भारत', style: TextStyle(fontSize: 17, color: AppColors.greenDark, fontWeight: FontWeight.w600)),
  const SizedBox(height: 8), const Text('GRAMMITRA MOBILE • v1.0', style: TextStyle(color: AppColors.muted)),
  const SizedBox(height: 45), ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/language'), child: const Text('Get Started  →')),
]))))); }
