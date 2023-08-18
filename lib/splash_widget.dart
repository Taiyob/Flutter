import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/screen_for_splash';
import 'package:flutter_basics/ui_helper/utill.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context,
        MaterialPageRoute(
          builder: (context)=> ScreenForSplash(),
        ));
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(
              child: Text('I am From Splash Class',
                style: mTextstyle16(),
              )),
        ),
      );
  }
}