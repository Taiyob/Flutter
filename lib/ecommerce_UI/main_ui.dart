import 'package:flutter/material.dart';
import 'package:flutter_basics/ecommerce_UI/Nagad_Home.dart';

void main(){
  runApp(MainUi());
}

class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  State<MainUi> createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagad',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeNagad(),
    );
  }
}
