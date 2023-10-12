import 'package:flutter/material.dart';

import 'firstpage.dart';
void main(){
  runApp(nextpage());
}
class nextpage extends StatelessWidget {
  const nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: page(),);
  }
}
class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
 var name=[];var number=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Contact'),),
    body:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [Expanded(child:  ListView.builder(itemCount: name.length,
        itemBuilder: (BuildContext context,index){
      return ListTile(title: Text(name[index]),subtitle: Text(number[index]),
      onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>
          firstpage(key1:name[index],key2:number[index])));}

      );}),)]),),);
  }
}
