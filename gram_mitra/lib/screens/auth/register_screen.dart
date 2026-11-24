import 'package:flutter/material.dart';
import '../../core/demo_store.dart';
import '../../widgets/brand_header.dart';

class RegisterScreen extends StatefulWidget { const RegisterScreen({super.key}); @override State<RegisterScreen> createState() => _RegisterScreenState(); }
class _RegisterScreenState extends State<RegisterScreen> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController(); final _phone = TextEditingController();
  final _password = TextEditingController(); final _confirm = TextEditingController();
  String _village = 'Adarsh Gram'; bool _agree = false; bool _hide = true;
  @override void dispose() { _name.dispose(); _phone.dispose(); _password.dispose(); _confirm.dispose(); super.dispose(); }
  void _register() {
    if (!_form.currentState!.validate()) return;
    if (!_agree) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please accept Terms & Privacy Policy'))); return; }
    if (!DemoStore.register(_name.text.trim(), _phone.text.trim(), _password.text, _village)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This mobile number is already registered'))); return;
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account created successfully. Please login.')));
    Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => r.settings.name == '/language');
  }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Create Account')), body: SafeArea(child: ListView(padding: const EdgeInsets.all(20), children: [
    const BrandHeader(), const SizedBox(height: 18),
    Form(key: _form, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Text('Full Name'), const SizedBox(height: 6), TextFormField(controller: _name, decoration: const InputDecoration(hintText: 'Enter your full name'), validator: (v) => v == null || v.trim().isEmpty ? 'Please enter your full name' : null),
      const SizedBox(height: 14), const Text('Mobile Number'), const SizedBox(height: 6), TextFormField(controller: _phone, keyboardType: TextInputType.phone, maxLength: 10, decoration: const InputDecoration(prefixText: '+91  ', hintText: '10-digit number', counterText: ''), validator: (v) => v == null || !RegExp(r'^\d{10}$').hasMatch(v.trim()) ? 'Enter a valid 10-digit mobile number' : null),
      const SizedBox(height: 14), const Text('Village / Gram Panchayat'), const SizedBox(height: 6), DropdownButtonFormField<String>(value: _village, decoration: const InputDecoration(), items: const [DropdownMenuItem(value: 'Adarsh Gram', child: Text('Adarsh Gram')), DropdownMenuItem(value: 'Rampura', child: Text('Rampura')), DropdownMenuItem(value: 'Navagam', child: Text('Navagam')), DropdownMenuItem(value: 'Sitapur', child: Text('Sitapur'))], onChanged: (v) => setState(() => _village = v ?? 'Adarsh Gram')),
      const SizedBox(height: 14), const Text('Password'), const SizedBox(height: 6), TextFormField(controller: _password, obscureText: _hide, decoration: InputDecoration(hintText: 'Create password (minimum 8 characters)', suffixIcon: IconButton(onPressed: () => setState(() => _hide = !_hide), icon: Icon(_hide ? Icons.visibility : Icons.visibility_off))), validator: (v) => v == null || v.isEmpty ? 'Please create a password' : v.length < 8 ? 'Password must be at least 8 characters' : null),
      const SizedBox(height: 14), const Text('Confirm Password'), const SizedBox(height: 6), TextFormField(controller: _confirm, obscureText: true, decoration: const InputDecoration(hintText: 'Confirm password'), validator: (v) => v == null || v.isEmpty ? 'Please confirm password' : v != _password.text ? 'Passwords do not match' : null),
      const SizedBox(height: 8), CheckboxListTile(value: _agree, contentPadding: EdgeInsets.zero, controlAffinity: ListTileControlAffinity.leading, title: const Text('I agree to the Terms & Privacy Policy'), onChanged: (v) => setState(() => _agree = v ?? false)),
      const SizedBox(height: 10), ElevatedButton(onPressed: _register, child: const Text('Create Account')),
    ])),
    Center(child: TextButton(onPressed: () => Navigator.pushReplacementNamed(context, '/login'), child: const Text('Already have an account? Login'))),
  ])));
}
