import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/splash_widget.dart';
import 'package:flutter_basics/ui_helper/utill.dart';


void main(){
  runApp(NotCompleteApps());
}

class NotCompleteApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: SplashScreen(),
    );
  }

}

class ScreenForSplash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Page Changing One To Another'),
        ),
        body: Text('When Time is finished, you see me', style: mTextstyle21(),),
      );
  }

}

