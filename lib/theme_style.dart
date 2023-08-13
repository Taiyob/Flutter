import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(ThemeApp());
}

class ThemeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          headlineLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.orange),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        )
      ),
      home: ShowScreen(),
    );
  }

}

class ShowScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        backgroundColor: Colors.lime,
      ),
      body: Column(
        children: [
          Text('Hellow Display', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red)),
          Text('Hellow Title', style: Theme.of(context).textTheme.titleLarge),
          Text('Hellow Display', style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.green)),
          Text('Hellow Heading', style: Theme.of(context).textTheme.headlineLarge),
          Text('Hellow Title', style: Theme.of(context).textTheme.titleLarge),
          Text('Another File', style: mTextstyle21(textColor: Colors.blue)),
        ],
      ),


    );
  }

}