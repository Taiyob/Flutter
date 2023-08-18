import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SortApps());
}

class SortApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: SizeBoxs(),
    );
  }

}

class SizeBoxs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SizeBoxStates();
  }

}

class SizeBoxStates extends State<SizeBoxs>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox'),
      ),
      body: //Center
        Wrap(
        children: [
          SizedBox.square(
              dimension: 100,
              // width: 200,
              // height: 50,
              child: ElevatedButton(
                onPressed: (){

                },child: Text('Click'),
              )
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox.square(
              dimension: 100,
              // width: 200,
              // height: 50,
              child: ElevatedButton(
                onPressed: (){

                },child: Text('Click'),
              )
          ),
          SizedBox(
            width: 50,
          ),
          SizedBox.square(
              dimension: 100,
              // width: 200,
              // height: 50,
              child: ElevatedButton(
                onPressed: (){

                },child: Text('Click'),
              )
          ),
        ],
      ),
    );
  }

}