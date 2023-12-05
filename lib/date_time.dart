import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(CompleteApps());
}

class CompleteApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: TimeandDateUser(),
    );
  }
}

class TimeandDateUser extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TimeandDateUserState();
  }
}

class TimeandDateUserState extends State<TimeandDateUser>{
  @override
  Widget build(BuildContext context) {
    var time= DateTime.now();
    return Scaffold(
    body: Center(
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text('Current Time: ${time.hour}:${time.minute}:${time.second}', style: TextStyle(fontSize: 25),),
                  Text('Current Time: ${DateFormat('Hms').format(time)}', style: TextStyle(fontSize: 25),),
                  //Text('Current Time: ${DateFormat('QQQQ').format(time)}', style: TextStyle(fontSize: 25),),
                  Text('Current Time: ${DateFormat('yMMMMEEEEd').format(time)}', style: TextStyle(fontSize: 25),),
                  ElevatedButton(onPressed: (){
                    setState(() {

                    });
                  }, child: Text('Current Time'))
                ],
              ),
            ),
          ),
        )),
    );
  }
}