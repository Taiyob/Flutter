import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FullApp());
}

class FullApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: FirstScreen(),
    );
  }

}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrListNames=['Siam', 'Taiyob', 'Oli', 'Rakib', 'Tamim', 'Redon'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrListNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.ad_units),
        );
      },
        itemCount: arrListNames.length,
        separatorBuilder: (context, index){
          return Divider(height: 100, thickness: 3,);
        },
      )
    );
  }
}