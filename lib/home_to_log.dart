import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(FullSecureApps());
}
class FullSecureApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),
      home: SplashPages(),
    );
  }

}

class SplashPages extends StatefulWidget{
  @override
  State<SplashPages> createState() => SplashPagesState();
}

class SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:(context) => LoginPage(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Retrieve'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center
          (child: Icon(
          Icons.account_circle,color: Colors.white,
          size: 10,
        )),
      ),
    );
  }
}

