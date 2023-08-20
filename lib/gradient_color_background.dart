import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(SampleLittleApp());
}
class SampleLittleApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: GradientColorBg(),
    );
  }

}

class GradientColorBg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Color'),
      ),
      body: Container(
          decoration: BoxDecoration(
            // RadialGradient
            gradient: LinearGradient(colors: [
              Color(0xffd9afd9),
              Color(0xff97d9e1),
              Color(0xffff0844),
              // Colors.orange.shade50,
              // Colors.purple.shade50,
              // Colors.brown.shade50,
            ],
            begin: FractionalOffset(1.0,0.5),
              end: FractionalOffset(0.0, 0.5),
              //stops: [0.0,0.0,1.0],
            )
          ),
      ),
    );
  }

}