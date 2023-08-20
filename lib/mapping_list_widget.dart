import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(BreakApp());
}
class BreakApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MappinglistWidget(),
    );
  }

}

class MappinglistWidget extends StatefulWidget{
  @override
  State<MappinglistWidget> createState() => _MappinglistWidgetState();
}

class _MappinglistWidgetState extends State<MappinglistWidget> {
  var arrData = [
      'Ali',
      'Oli',
      'Siam',
      'Rakib',
      'Tamim',
      'Nazmul',
      'Robiul',
      'Tahmid',
      'Faiyaz',
      'Razu',
      'Sofik',
      'Rimon',
      'Redon',
      'Rakin',
      'Pranto',
      'Saimon',
      'Samin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping List'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                  borderRadius: BorderRadius.circular(21)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text(value,style: whiteColor(),)),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}