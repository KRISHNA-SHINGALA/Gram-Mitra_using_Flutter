import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../core/demo_store.dart';

class SelectVillageScreen extends StatefulWidget { const SelectVillageScreen({super.key}); @override State<SelectVillageScreen> createState()=>_SelectVillageScreenState(); }
class _SelectVillageScreenState extends State<SelectVillageScreen>{
 String _selected='Adarsh Gram';
 final _villages=const [('Adarsh Gram','Lodhika Taluka • Rajkot District','4,250 residents • PIN 360001'),('Rampura','Dholka Taluka • Ahmedabad District','2,890 residents • PIN 382225'),('Navagam','Dholka Taluka • Rajkot District','5,120 residents • PIN 360311'),('Sitapur','Jamnagar Taluka • Jamnagar District','1,740 residents • PIN 361002')];
 @override Widget build(BuildContext context)=>Scaffold(appBar:AppBar(title:const Text('Select Your Village')),body:ListView(padding:const EdgeInsets.all(18),children:[
 const Text('Choose your Gram Panchayat',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold,color:AppColors.greenDark)),const SizedBox(height:8),const Text('Local schemes, jobs and public notices will be shown according to your selected village.'),const SizedBox(height:16),
 ..._villages.map((v)=>Card(child:RadioListTile<String>(value:v.$1,groupValue:_selected,activeColor:AppColors.green,title:Text(v.$1,style:const TextStyle(fontWeight:FontWeight.bold)),subtitle:Text('${v.$2}\n${v.$3}'),isThreeLine:true,onChanged:(x)=>setState(()=>_selected=x??'Adarsh Gram')))),
 const SizedBox(height:12),ElevatedButton(onPressed:(){DemoStore.village=_selected;Navigator.pushNamed(context,'/confirm-village');},child:const Text('Continue')),
]));
}
