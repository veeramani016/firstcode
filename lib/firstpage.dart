import 'package:flutter/material.dart';
class firstpage extends StatefulWidget {
  const firstpage({super.key,required this.key1,required this.key2});
  final String key1;final String key2;

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(widget.key1),),);
  }
}
