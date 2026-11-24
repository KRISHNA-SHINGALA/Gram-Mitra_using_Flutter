import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
class AdminLoginScreen extends StatefulWidget { const AdminLoginScreen({super.key}); @override State<AdminLoginScreen> createState() => _AdminLoginScreenState(); }
class _AdminLoginScreenState extends State<AdminLoginScreen> {
 final _form = GlobalKey<FormState>(); final _phone = TextEditingController(); final _pass = TextEditingController();
 @override void dispose(){_phone.dispose();_pass.dispose();super.dispose();}
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Panchayat Admin Login')),body:ListView(padding:const EdgeInsets.all(22),children:[
 const Icon(Icons.account_balance, size:68,color:AppColors.green),const SizedBox(height:12),const Text('Village Administration Portal',textAlign:TextAlign.center,style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),const SizedBox(height:22),
 Form(key:_form,child:Column(children:[TextFormField(controller:_phone,keyboardType:TextInputType.phone,maxLength:10,decoration:const InputDecoration(prefixText:'+91  ',hintText:'Registered mobile number',counterText:''),validator:(v)=>v==null||!RegExp(r'^\d{10}$').hasMatch(v.trim())?'Enter valid 10-digit mobile number':null),const SizedBox(height:14),TextFormField(controller:_pass,obscureText:true,decoration:const InputDecoration(hintText:'Password'),validator:(v)=>v==null||v.isEmpty?'Please enter password':v.length<8?'Password must be at least 8 characters':null),const SizedBox(height:20),ElevatedButton(onPressed:(){if(!_form.currentState!.validate())return;if(_phone.text.trim()!='9876500000'||_pass.text!='Gram@1234'){ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Invalid admin credentials')));return;}Navigator.pushNamedAndRemoveUntil(context,'/admin-verify',(r)=>false);},child:const Text('Login as Admin'))])),
 const SizedBox(height:10),const Text('Demo admin: 9876500000 / Gram@1234',textAlign:TextAlign.center,style:TextStyle(color:AppColors.muted,fontSize:12)),TextButton(onPressed:()=>Navigator.pushReplacementNamed(context,'/login'),child:const Text('Citizen Login')),
]));
}
