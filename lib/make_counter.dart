import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

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
      home: ScreenCountingApp(),
    );
  }

}

class ScreenCountingApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ScreenCountingAppState();
}


class ScreenCountingAppState extends State<ScreenCountingApp>{
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter ${count}', style: mTextstyle21(),),
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                  print(count);
                });
              }, child: Text('Press Here', style:mTextstyle21(),)),
            ],
          ),
        ),
      ),
    );
  }

}