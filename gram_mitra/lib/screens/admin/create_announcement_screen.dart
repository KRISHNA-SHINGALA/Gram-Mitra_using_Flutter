import 'package:flutter/material.dart';
class CreateAnnouncementScreen extends StatefulWidget { const CreateAnnouncementScreen({super.key}); @override State<CreateAnnouncementScreen> createState()=>_CreateAnnouncementScreenState(); }
class _CreateAnnouncementScreenState extends State<CreateAnnouncementScreen>{
 final _form=GlobalKey<FormState>(); final _title=TextEditingController(); final _details=TextEditingController(); String _type='General';
 @override void dispose(){_title.dispose();_details.dispose();super.dispose();}
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Create Announcement')),body:ListView(padding:const EdgeInsets.all(18),children:[
 const Text('Prepare an official notice for village residents.'),const SizedBox(height:18),Form(key:_form,child:Column(crossAxisAlignment:CrossAxisAlignment.stretch,children:[
 const Text('Announcement Title *'),const SizedBox(height:6),TextFormField(controller:_title,decoration:const InputDecoration(hintText:'Enter announcement title'),validator:(v)=>v==null||v.trim().isEmpty?'Please enter announcement title':null),
 const SizedBox(height:14),const Text('Announcement Type *'),const SizedBox(height:6),DropdownButtonFormField<String>(value:_type,items:const ['General','Government','Programme','Water / Electricity','Health'].map((v)=>DropdownMenuItem(value:v,child:Text(v))).toList(),onChanged:(v)=>setState(()=>_type=v??'General')),
 const SizedBox(height:14),const Text('Complete Details *'),const SizedBox(height:6),TextFormField(controller:_details,maxLines:5,decoration:const InputDecoration(hintText:'Write the full announcement'),validator:(v)=>v==null||v.trim().length<10?'Please enter at least 10 characters':null),
 const SizedBox(height:18),ElevatedButton(onPressed:(){if(!_form.currentState!.validate())return;showDialog(context:context,builder:(ctx)=>AlertDialog(title:const Text('Demo Announcement Saved'),content:Text('${_title.text}\nCategory: $_type'),actions:[TextButton(onPressed:(){Navigator.pop(ctx);Navigator.pushNamed(context,'/admin-announcements');},child:const Text('Done'))]));},child:const Text('Save Announcement')),
]))]));
}
