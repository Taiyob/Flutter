import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(AppCard());
}

class AppCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: '3D style with cart',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: CardTheme(),
      );
  }

}

class CardTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Center(
        child: Card(
          elevation: 5,
            shadowColor: Colors.pink,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('This Is Oli from BD', style: (mTextstyle21()),),
        )),
      ),
    );
  }

}