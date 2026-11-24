import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../core/demo_store.dart';
import '../../widgets/brand_header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  bool _hide = true;
  @override void dispose() { _phone.dispose(); _password.dispose(); super.dispose(); }
  void _login() {
    if (!_formKey.currentState!.validate()) return;
    if (!DemoStore.login(_phone.text.trim(), _password.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid mobile number or password. Please try again.')));
      return;
    }
    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
  }
  @override Widget build(BuildContext context) => Scaffold(body: SafeArea(child: Center(child: SingleChildScrollView(
    padding: const EdgeInsets.all(22), child: Column(children: [
      const BrandHeader(subtitle: 'Village services & civic records at your fingertips'),
      const SizedBox(height: 25),
      Card(child: Padding(padding: const EdgeInsets.all(18), child: Form(key: _formKey, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const Text('Welcome to GramMitra', textAlign: TextAlign.center, style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: AppColors.greenDark)),
        const SizedBox(height: 20),
        const Text('Mobile Number'), const SizedBox(height: 7),
        TextFormField(controller: _phone, keyboardType: TextInputType.phone, maxLength: 10,
          decoration: const InputDecoration(prefixText: '+91  ', hintText: 'Enter 10-digit number', counterText: ''),
          validator: (v) { if (v == null || v.trim().isEmpty) return 'Please enter mobile number'; if (!RegExp(r'^\d{10}$').hasMatch(v.trim())) return 'Enter a valid 10-digit mobile number'; return null; }),
        const SizedBox(height: 15), const Text('Password'), const SizedBox(height: 7),
        TextFormField(controller: _password, obscureText: _hide, decoration: InputDecoration(hintText: 'Enter your password', suffixIcon: IconButton(icon: Icon(_hide ? Icons.visibility : Icons.visibility_off), onPressed: () => setState(() => _hide = !_hide))),
          validator: (v) { if (v == null || v.isEmpty) return 'Please enter password'; if (v.length < 8) return 'Password must be at least 8 characters'; return null; }),
        Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () => Navigator.pushNamed(context, '/forgot'), child: const Text('Forgot Password?'))),
        ElevatedButton(onPressed: _login, child: const Text('Login')),
        const SizedBox(height: 10), OutlinedButton.icon(onPressed: () => Navigator.pushNamed(context, '/otp'), icon: const Icon(Icons.sms_outlined), label: const Text('Login with OTP')),
        const SizedBox(height: 14),
        const Text('Demo login: 9876500000 / Gram@1234', textAlign: TextAlign.center, style: TextStyle(color: AppColors.muted, fontSize: 12)),
      ])))),
      const SizedBox(height: 15), TextButton(onPressed: () => Navigator.pushNamed(context, '/register'), child: const Text('Don’t have an account? Register')),
      TextButton(onPressed: () => Navigator.pushNamed(context, '/admin-login'), child: const Text('Panchayat Admin Login')),
    ])))));
}
