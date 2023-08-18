import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(TotalApp());
}

class TotalApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: GridLayout(),
    );
  }

}

class GridLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return GridLayoutState();
  }

}

class GridLayoutState extends State<GridLayout>{
  @override
  Widget build(BuildContext context) {
    var arrColor=[
      Colors.brown,
      Colors.black45,
      Colors.yellow,
      Colors.teal,
      Colors.green,
      Colors.blueAccent,
      Colors.deepOrange,
      Colors.deepPurple,
      Colors.tealAccent
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Layout'),
      ),
      body: GridView.builder(itemBuilder: (context, index){
        return Container(color: arrColor[index],);
      },itemCount: arrColor.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent //SliverGridDelegateWithFixedCrossAxisCount
        (
          //crossAxisCount:3,
        maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
        ),
        ),






      // body: GridView.count(crossAxisCount: 4,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColor[0],),
      //     Container(color: arrColor[1],),
      //     Container(color: arrColor[2],),
      //     Container(color: arrColor[3],),
      //     Container(color: arrColor[4],),
      //     Container(color: arrColor[5],),
      //     Container(color: arrColor[6],),
      //     Container(color: arrColor[7],),
      //   ],
      // ),






      // body:
      //   GridView.extent(
      //     maxCrossAxisExtent: 100,
      //     crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColor[0],),
      //     Container(color: arrColor[1],),
      //     Container(color: arrColor[2],),
      //     Container(color: arrColor[3],),
      //     Container(color: arrColor[4],),
      //     Container(color: arrColor[5],),
      //     Container(color: arrColor[6],),
      //     Container(color: arrColor[7],),
      //   ],
      // ),









      // Container(
      //   width: 200,
      //   child: GridView.count(crossAxisCount: 3,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[0],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[1],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[2],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[3],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[4],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[5],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[6],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[7],),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(color: arrColor[8],),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

}