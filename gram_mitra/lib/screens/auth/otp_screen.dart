import 'package:flutter/material.dart';
class OtpScreen extends StatefulWidget { const OtpScreen({super.key}); @override State<OtpScreen> createState() => _OtpScreenState(); }
class _OtpScreenState extends State<OtpScreen> {
  final _otp = TextEditingController();
  @override void dispose() { _otp.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) { final argument = ModalRoute.of(context)?.settings.arguments; final isPasswordReset = argument is String; final phone = argument is String ? argument : '9876500000'; return Scaffold(appBar: AppBar(title: const Text('Verify Mobile Number')), body: ListView(padding: const EdgeInsets.all(22), children: [
    const Icon(Icons.verified_user_rounded, size: 70, color: Color(0xFF064B38)), const SizedBox(height: 16),
    const Text('Enter 6-digit OTP', textAlign: TextAlign.center, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
    const SizedBox(height: 8), Text('OTP sent to +91 $phone', textAlign: TextAlign.center), const SizedBox(height: 25),
    TextField(controller: _otp, keyboardType: TextInputType.number, maxLength: 6, textAlign: TextAlign.center, decoration: const InputDecoration(hintText: '• • • • • •', counterText: 'Demo OTP: 123456')),
    ElevatedButton(onPressed: () { if (_otp.text.trim() != '123456') { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid OTP. Please enter 123456 for demo.'))); return; } ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Mobile number verified successfully'))); if (isPasswordReset) { Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => false); } else { Navigator.pushNamedAndRemoveUntil(context, '/home', (r) => false); } }, child: const Text('Verify & Continue')),
    TextButton(onPressed: () => _otp.text = '123456', child: const Text('Fill demo OTP')),
  ])); }
}
