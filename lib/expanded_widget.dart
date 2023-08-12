import 'package:flutter/material.dart';

void main(){
  runApp(TaiyobApp());
}

class TaiyobApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taiyob Flutter Costom Main File",
      theme: ThemeData(
          primarySwatch: Colors.indigo
      ),
      home: TaiyobTheme(),
    );
  }

}

class TaiyobTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar'),
      ),
      body: //Row
            Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              //width: 60,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              //width: 60,
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              //width: 60,
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              //width: 60,
              color: Colors.pink,
            ),
          )
        ]
      ),
    );
  }

}
