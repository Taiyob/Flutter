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
    {
      'name' : 'Taiyob',
      'phn' : '01256456',
      'unread' : '2',
    },
    {
      'name' : 'Sayed',
      'phn' : '45896521',
      'unread' : '3',
    },
    {
      'name' : 'Majharul',
      'phn' : '98745214',
      'unread' : '4',
    },
    {
      'name' : 'Rifat',
      'phn' : '52147896',
      'unread' : '8',
    },
    {
      'name' : 'Wahed',
      'phn' : '35987458',
      'unread' : '5',
    },
    {
      'name' : 'Rejwan',
      'phn' : '87458965',
      'unread' : '5',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping List'),
      ),
      body: Container(
        child: ListView(
          children: arrData.map((value) =>
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['phn'].toString()),
              trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blueGrey,
                  child: Text(value['unread'].toString())),
            )
          ).toList(),
        ),
      ),
    );
  }
}