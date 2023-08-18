import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(JustApps());
}

class JustApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: PositionWidget(),
    );
  }

}

class PositionWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return PositionWidgetStates();
  }

}

class PositionWidgetStates extends State<PositionWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Position Widget'),
      ),
      body: Container(
        height: 200,
        width: 300,
        color: Colors.green,
        child: Stack(
          children: [
            Positioned(
              right: 41,
              bottom: 41,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
            ),
          ],
        ),
      ),
    );
  }

}











