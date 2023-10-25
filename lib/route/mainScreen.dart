import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenOne.dart';
import 'package:flutter_basics/route/screenThree.dart';
import 'package:flutter_basics/route/screenTwo.dart';


void main(){
  print('main');
  runApp(const ScreenApp());
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
      initialRoute: ScreenOne.id,
      routes: {
        ScreenOne.id:(context)=>const ScreenOne(),
        ScreenTwo.id:(context)=>const ScreenTwo(),
        ScreenThree.id:(context)=>const ScreenThree(),
      },
    );
  }
}
