import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/dataGet.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(InformationApps());
}

class InformationApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: DataPassWidget(),
    );
  }

}

class DataPassWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => DataPassWidgetStates();

}

class DataPassWidgetStates extends State<DataPassWidget>{
  var nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Value Passing one to another page'),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Write something.... and see magic', style: mTextstyle21(),),
                const SizedBox(
                  height: 11,
                ),
                TextField(
                    controller: nameController,
                ),
                const SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DataGetMethod(nameController.text.toString()),));
                    }, child: Text('Next')
                ),
              ],
            ),
          ),
        ),
      );
  }

}