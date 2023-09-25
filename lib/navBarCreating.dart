import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/navDemo.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NAV',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const NavDemo(),
    );
  }
}
