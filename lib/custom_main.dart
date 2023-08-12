import 'package:flutter/material.dart';

void main(){
  runApp(TaiyobApp());
}

class TaiyobApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taiyob Flutter Costom Main File",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: TaiyobTheme(),
    );
  }
  
}

class TaiyobTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar'),
      ),
      body: Container(
        color: Colors.tealAccent,
      ),
    );
  }

}
