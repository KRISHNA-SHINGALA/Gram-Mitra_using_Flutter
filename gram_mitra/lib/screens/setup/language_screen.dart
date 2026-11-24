import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
class LanguageScreen extends StatefulWidget { const LanguageScreen({super.key}); @override State<LanguageScreen> createState() => _LanguageScreenState(); }
class _LanguageScreenState extends State<LanguageScreen> { String _language = 'Gujarati'; @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Choose your language')), body: ListView(padding: const EdgeInsets.all(20), children: [
  const Text('अपनी भाषा चुनें • તમારી ભાષા પસંદ કરો', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)), const SizedBox(height: 18),
  ...['Gujarati', 'Hindi', 'English'].map((v) => Card(child: RadioListTile<String>(value: v, groupValue: _language, activeColor: AppColors.green, title: Text(v, style: const TextStyle(fontWeight: FontWeight.w600)), subtitle: Text(v == 'Gujarati' ? 'ગુજરાતી' : v == 'Hindi' ? 'हिन्दी' : 'Default Global'), onChanged: (x) => setState(() => _language = x ?? 'Gujarati')))),
  const SizedBox(height: 20), const Text('Designed for fast & simple village panchayat communication.'), const SizedBox(height: 28),
  ElevatedButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: const Text('Continue')),
])); }
