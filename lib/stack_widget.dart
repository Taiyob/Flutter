import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(PracticeApps());
}

class PracticeApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: StackWidget(),
    );
  }

}


class StackWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StackWidgetState();
  }

}

class StackWidgetState extends State<StackWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splitting Widget'),
      ),
      body: Container(
        height: 300,
        width: 300,
        child: Stack(
          //alignment: Alignment.topRight,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              //child: Text('c1-text'),
            ),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.lightGreen,
                //child: Text('c2-text'),
              ),
            ),
            //Text('test'),
          ],
        ),
      ),
    );
  }
}