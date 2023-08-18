import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/IntroPages.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(LittleApps());
}

class LittleApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: IntroPage(),
    );
  }

}

class ScreenWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Page Changing One To Another'),
        ),
        body: Text('Someone clicked Intro Page.', style: mTextstyle21(),),
      );
  }

}

