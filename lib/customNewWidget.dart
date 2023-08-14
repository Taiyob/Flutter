import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';

void main(){
  runApp(SmallApps());
}

class SmallApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: CustomNewWidget(),
    );
  }

}

class CustomNewWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CustomNewWidgetState();
  }

}

class CustomNewWidgetState extends State<CustomNewWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Title'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Play', icon: Icon(Icons.play_arrow),
                callback: (){
                print('Login');
              },
                textStyle: mTextstyle21(),
              ),
            ),
            Container(
              height: 11,
            ),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(btnName: 'Press',
                callback: (){
                  print('Login');
                },
                bgColor: Colors.blueGrey,
                textStyle: mTextstyle16(),
              ),
            ),
          ],
        ),
      ),
    );
  }

}