import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(SimpleApps());
}

class SimpleApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CalculateApps(),
    );
  }

}

class CalculateApps extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> CalculateAppsStates();
}

class CalculateAppsStates extends State<CalculateApps>{
  var numOneController= TextEditingController();
  var numTwoController= TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalCulator'),
      ),
      body: Container(
        color: Colors.pink.shade300,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numOneController,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: numTwoController,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var n1= int.parse(numOneController.text.toString());
                        var n2= int.parse(numTwoController.text.toString());

                        var sum = n1+n2;
                        result = 'The sum of $n1 and $n2 is $sum';
                        setState(() {

                        });
                      }, child: Text('PLUS',style: mTextstyle16(),)),
                      ElevatedButton(onPressed: (){
                        var n1= int.parse(numOneController.text.toString());
                        var n2= int.parse(numTwoController.text.toString());

                        var dif = n1-n2;
                        result = 'The difference of $n1 and $n2 is $dif';
                        setState(() {

                        });
                      }, child: Text('MINUS',style: mTextstyle16(),)),
                      ElevatedButton(onPressed: (){
                        var n1= int.parse(numOneController.text.toString());
                        var n2= int.parse(numTwoController.text.toString());

                        var mul = n1*n2;
                        result = 'The product of $n1 and $n2 is ${mul.toStringAsFixed(3)}';
                        setState(() {

                        });
                      }, child: Text('MULTIPLY', style: mTextstyle16(),)),
                      ElevatedButton(onPressed: (){
                        var n1= int.parse(numOneController.text.toString());
                        var n2= int.parse(numTwoController.text.toString());

                        var each = n1/n2;
                        result = 'The division of $n1 and $n2 is ${each.toStringAsFixed(4)}';
                        setState(() {

                        });
                      }, child: Text('DIVISION', style: mTextstyle16(),)),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(21),
                  child: Text(result,style: mTextstyle21(textColor: Colors.white),),),
              ],
            ),
          ),
        ),
      ),
    );
  }

}