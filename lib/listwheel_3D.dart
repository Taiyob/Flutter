import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MagicAppThreeD());
}
class MagicAppThreeD extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3D',
      theme: ThemeData(
         primarySwatch: Colors.lime,
      ),
      home: ListWheelScrollViwes(),
    );
  }

}
//3D animation ..................
class ListWheelScrollViwes extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ListWheelScrollViweState();

}

class ListWheelScrollViweState extends State<ListWheelScrollViwes>{
  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10,11
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D Animation'),
      ),
      body:Center(
        child: ListWheelScrollView(
          itemExtent: 200,
           children: arrIndex.map((value) => Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               child: Center(
                   child: Text(
                     '$value',
                     style: TextStyle(
                         fontSize: 21,
                         color: Colors.white
                     ),
                   )),
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(21),
               ),
               width: double.infinity,
             ),
           )).toList(),
        ),
      ) ,
    );
  }

}