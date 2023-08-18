import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

class DataGetMethod extends StatelessWidget{
  var nameFromHome;
  DataGetMethod(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('My Name'),
        ),
        body: Container(
          color: Colors.greenAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome $nameFromHome', style: whiteColor(),),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },child: Text('Back'),),
              ],
            ),
          )
        ),
      );
  }

}