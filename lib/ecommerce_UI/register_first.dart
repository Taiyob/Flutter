import 'package:flutter/material.dart';
import 'package:flutter_basics/ecommerce_UI/Nagad_Home.dart';
import 'package:flutter_basics/ecommerce_UI/additional_info.dart';
import 'package:flutter_basics/ecommerce_UI/button_for_splash.dart';
import 'package:flutter_basics/ecommerce_UI/register_screen.dart';
import 'package:flutter_basics/ecommerce_UI/scanned_data.dart';

void main() {
  runApp(RegisterScreenOne());
}

class RegisterScreenOne extends StatefulWidget {
  static const String id = 'register_screen_one';
  const RegisterScreenOne({Key? key}) : super(key: key);

  @override
  State<RegisterScreenOne> createState() => _RegisterScreenOneState();
}

class _RegisterScreenOneState extends State<RegisterScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagad',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: RegisterScreen.id,
      routes: {
        HomeNagad.id: (context)=> HomeNagad(),
        ScanData.id: (context)=> ScanData(),
        AdditionalInfo.id:(context)=>AdditionalInfo(),
      },
      home: RegisterScreen(),
    );
  }
}


