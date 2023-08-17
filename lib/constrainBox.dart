import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(NormalApps());
}

class NormalApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ConstrainBoxWidget(),
    );
  }

}

class ConstrainBoxWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ConstrainBoxWidgetStates();
  }

}

class ConstrainBoxWidgetStates extends State<ConstrainBoxWidget>{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Constrain Box'),
        ),
        body: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 300,
              minWidth: 200,
              maxWidth: 200,
              minHeight: 100,
            ),
            child: ElevatedButton(onPressed: (){

            }, child: Text('Push Me'),),


            // Text('Constrain Constrain Constrain Constrain'
            //     ' Constrain Constrain Constrain Constrain Constrain'
            //     ' Constrain Constrain Constrain Constrain Constrain'
            //     'Constrain Constrain Constrain Constrain Constrain '
            //     'Constrain Constrain Constrain Constrain Constrain '
            //     'Constrain Constrain',
            //   style: mTextstyle21(), overflow: TextOverflow.fade,
            // ),
        ),
      );
  }

}
