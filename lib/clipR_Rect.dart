import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(SampleShortApp());
}
class SampleShortApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ClipRRectWidget(),
    );
  }

}

class ClipRRectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip R Rect'),
      ),
      body: Center(
        child: ClipRect(
            //borderRadius: BorderRadius.circular(21),       // ........... problem line
            child: Image.asset('assets/images/only.jpg',width: 400,height: 200,fit: BoxFit.fill,),
            // Container(
            //   color: Colors.lime,
            //   height: 200,
            //   width: 200,
            // ),
        ),
      ),
    );
  }

}