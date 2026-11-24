import 'package:flutter/material.dart';
import '../../core/app_theme.dart';

class ReportProblemScreen extends StatefulWidget {
  const ReportProblemScreen({super.key});
  @override State<ReportProblemScreen> createState() => _ReportProblemScreenState();
}
class _ReportProblemScreenState extends State<ReportProblemScreen> {
  final _form = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _details = TextEditingController();
  String _category = 'Road';
  @override void dispose() { _title.dispose(); _details.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Report a Problem')), body: ListView(padding: const EdgeInsets.all(18), children: [
    Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: AppColors.mintLight, borderRadius: BorderRadius.circular(16)), child: const Text('Tell your Gram Panchayat about a village issue. This demo keeps the report on this screen only.')),
    const SizedBox(height: 16), Form(key: _form, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Text('Problem Category'), const SizedBox(height: 6), DropdownButtonFormField<String>(value: _category, items: const ['Road','Water','Electricity','Cleanliness','Street Light','Drainage','Other'].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(), onChanged:(v)=>setState(()=>_category=v??'Road')),
      const SizedBox(height: 14), const Text('Short Title'), const SizedBox(height: 6), TextFormField(controller:_title, decoration:const InputDecoration(hintText:'Example: Water pipe leakage'), validator:(v)=>v==null||v.trim().isEmpty?'Please enter problem title':null),
      const SizedBox(height: 14), const Text('Detailed Description'), const SizedBox(height: 6), TextFormField(controller:_details,maxLines:4,decoration:const InputDecoration(hintText:'Describe the issue and its location'),validator:(v)=>v==null||v.trim().length<10?'Please enter at least 10 characters':null),
      const SizedBox(height: 18), ElevatedButton(onPressed:(){if(!_form.currentState!.validate())return;showDialog(context:context,builder:(ctx)=>AlertDialog(title:const Text('Complaint Submitted'),content:Text('Your demo complaint has been created.\nComplaint ID: #GM10245\nCategory: $_category'),actions:[TextButton(onPressed:(){Navigator.pop(ctx);Navigator.pushNamed(context,'/complaint-tracking');},child:const Text('Track Complaint'))]));},child:const Text('Submit Complaint')),
    ])),
  ]));
}
