import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SmallApps());
}

class SmallApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: WrapWidget(),
    );
  }

}

class WrapWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WrapWidgetStates();
  }

}

class WrapWidgetStates extends State<WrapWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Widget'),
      ),
      body:
        //SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        //child:
          Container(
            width: double.infinity,
            child: Wrap(
              //direction: Axis.vertical,
              alignment: WrapAlignment.center,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.blueGrey,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.black,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.pink,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.purple,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.yellow,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.blue,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.green,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.brown,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.greenAccent,
              ),
            ],
        ),
          ),
      //),
    );
  }

}