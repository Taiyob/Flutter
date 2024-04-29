import 'package:flutter/material.dart';

class CustomHomeScreen extends StatefulWidget {
  const CustomHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomHomeScreen> createState() => _CustomHomeScreenState();
}

class _CustomHomeScreenState extends State<CustomHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Home'),
      ),
      body: Center(child: Text('Custom Home Screen'),),
    );
  }
}
