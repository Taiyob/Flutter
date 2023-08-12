import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Software());
}

class Software extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: FirstPage(),
    );
  }

}


class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wecome')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          margin: EdgeInsets.all(11),
          color: Colors.pink,
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Text('Start first page', style: TextStyle(fontSize: 35),),
          ),
        ),
      ),
    );
  }

}