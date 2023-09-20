import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_basics/designPage.dart';





void main(){
  runApp(MaterialApp(home: ShopUI(),));
}

class ShopUI extends StatefulWidget {
  const ShopUI({Key? key}) : super(key: key);

  @override
  State<ShopUI> createState() => _ShopUIState();
}

class _ShopUIState extends State<ShopUI> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),
            ()=>Navigator.push(
            context, MaterialPageRoute(builder: (context)=>const DesignPage(),
            settings: RouteSettings(name: 'DesignPage'),
            fullscreenDialog: false
        )));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('UI Design',style: TextStyle(fontWeight: FontWeight.w900),)),
        ),
        body: const Center(
          child: LinearProgressIndicator(
            backgroundColor: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
