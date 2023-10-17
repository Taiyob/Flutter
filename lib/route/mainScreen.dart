import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenOne.dart';
import 'package:flutter_basics/route/screenTwo.dart';


void main(){
  runApp(ScreenApp());
}

class ScreenApp extends StatelessWidget {
  const ScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Route',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: ScreenTwo.id,
      routes: {
        ScreenOne.id:(context)=>ScreenOne(),
        ScreenTwo.id:(context)=>ScreenTwo(),
      },
    );
  }
}
