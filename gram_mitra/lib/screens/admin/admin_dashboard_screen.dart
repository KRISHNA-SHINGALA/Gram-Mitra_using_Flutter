import 'package:flutter/material.dart';
import '../../core/app_theme.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});
  static const _modules=[
    ('Village Overview',Icons.location_city,'/admin-overview'),
    ('Announcements',Icons.campaign,'/admin-announcements'),
    ('Notification Management',Icons.notifications,'/admin-notifications'),
    ('Reported Problems',Icons.report_problem,'/admin-problems'),
    ('Villagers Register',Icons.people,'/admin-villagers'),
    ('Village Services',Icons.home_repair_service,'/admin-services'),
    ('Jobs Management',Icons.work,'/admin-jobs'),
    ('Admin Profile',Icons.person,'/admin-profile'),
  ];
  @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Panchayat Dashboard'),actions:[IconButton(onPressed:()=>Navigator.pushNamed(context,'/admin-profile'),icon:const Icon(Icons.account_circle))]),body:ListView(padding:const EdgeInsets.all(18),children:[
    Container(padding:const EdgeInsets.all(18),decoration:BoxDecoration(color:AppColors.greenDark,borderRadius:BorderRadius.circular(18)),child:const Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Namaste, Sarpanch Shri 👋',style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)),SizedBox(height:6),Text('Adarsh Gram Panchayat • Rajkot, Gujarat',style:TextStyle(color:Colors.white70)),SizedBox(height:12),Text('Official Administration Portal',style:TextStyle(color:AppColors.mint))])),
    const SizedBox(height:16),const Text('Panchayat Statistics',style:TextStyle(fontSize:19,fontWeight:FontWeight.bold)),const SizedBox(height:10),
    GridView.count(shrinkWrap:true,physics:const NeverScrollableScrollPhysics(),crossAxisCount:2,childAspectRatio:1.65,crossAxisSpacing:10,mainAxisSpacing:10,children:const [
      _StatCard('1,248','Villagers',Icons.people),_StatCard('386','Families',Icons.family_restroom),_StatCard('94%','Profile Complete',Icons.verified),_StatCard('4','Pending Items',Icons.pending_actions),
    ]),
    const SizedBox(height:16),const Text('Administration Modules',style:TextStyle(fontSize:19,fontWeight:FontWeight.bold)),const SizedBox(height:8),
    ..._modules.map((m)=>Card(child:ListTile(leading:CircleAvatar(backgroundColor:AppColors.mintLight,child:Icon(m.$2,color:AppColors.green)),title:Text(m.$1,style:const TextStyle(fontWeight:FontWeight.w600)),trailing:const Icon(Icons.chevron_right),onTap:()=>Navigator.pushNamed(context,m.$3)))),
    TextButton(onPressed:()=>Navigator.pushNamedAndRemoveUntil(context,'/login',(r)=>false),child:const Text('Logout')),
  ]));
}
class _StatCard extends StatelessWidget{const _StatCard(this.value,this.label,this.icon);final String value,label;final IconData icon;@override Widget build(BuildContext context)=>Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(icon,color:AppColors.green),Text(value,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),Text(label,textAlign:TextAlign.center,style:const TextStyle(color:AppColors.muted,fontSize:12))])));}
