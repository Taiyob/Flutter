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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.green,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            //color: Colors.yellow,
            decoration: BoxDecoration(
                color: Colors.red,
                //borderRadius: BorderRadius.circular(100),
                //borderRadius: BorderRadius.only(topLeft: Radius.elliptical(91, 51),bottomRight: Radius.elliptical(70, 80)),
                //borderRadius: BorderRadius.only(topLeft: Radius.circular(55),bottomRight: Radius.circular(25)),
                border: Border.all(
                  width: 20,
                  color: Colors.white,
                ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 51,
                  spreadRadius: 20,
                  color: Colors.blue,
                )
              ],
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }

}
