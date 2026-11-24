import 'package:flutter/material.dart';
import '../../widgets/brand_header.dart';
class ForgotPasswordScreen extends StatefulWidget { const ForgotPasswordScreen({super.key}); @override State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState(); }
class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _phone = TextEditingController();
  @override void dispose() { _phone.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Forgot Password?')), body: ListView(padding: const EdgeInsets.all(22), children: [
    const BrandHeader(subtitle: 'Reset your password'), const SizedBox(height: 24),
    const Text('Enter your registered mobile number. A demo OTP will be shown on the next screen.', style: TextStyle(fontSize: 16)), const SizedBox(height: 18),
    TextField(controller: _phone, keyboardType: TextInputType.phone, maxLength: 10, decoration: const InputDecoration(prefixText: '+91  ', hintText: '10-digit mobile number')),
    ElevatedButton(onPressed: () { if (!RegExp(r'^\d{10}$').hasMatch(_phone.text.trim())) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Enter a valid 10-digit mobile number'))); return; } Navigator.pushNamed(context, '/otp', arguments: _phone.text.trim()); }, child: const Text('Send OTP')),
    const SizedBox(height: 8), const Text('Demo OTP: 123456', textAlign: TextAlign.center),
  ]));
}
