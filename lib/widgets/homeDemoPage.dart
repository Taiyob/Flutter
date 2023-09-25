import 'package:flutter/material.dart';

class MyDemoHome extends StatefulWidget {
  const MyDemoHome({Key? key}) : super(key: key);

  @override
  State<MyDemoHome> createState() => _MyDemoHomeState();
}

class _MyDemoHomeState extends State<MyDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home Page'),),
    );
  }
}
