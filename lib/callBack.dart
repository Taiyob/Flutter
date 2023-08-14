import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SmallApps());
}

class SmallApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: CallBackFunction(),
    );
  }

}

class CallBackFunction extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CallBackFuctionState();
  }

}

class CallBackFuctionState extends State<CallBackFunction>{

  callBack(){
    print('I am from CallBack');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CallBack'),
      ),
      body: ElevatedButton(
        child: Text('Click'),
       onPressed: callBack
        // {
        //   print('Clicked!!!!!');
        // },
      ),
    );
  }

}