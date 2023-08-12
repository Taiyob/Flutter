import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FullApps());
}


class FullApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'This is title',
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    home: Avatar(),
  );
  }

}

class Avatar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tile'),
      ),
      body: Center(
          //child: Container(
          //height: 200,
          //width: 200,
          child: CircleAvatar(
              //child: Text('Name', style: TextStyle(color: Colors.black, fontSize: 50),),
              child: Container(
                width: 60,
                height: 60,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/images/nature.jpg'
                        )),
                    Text('Nature'),
                  ],
                ),
              ),
              backgroundColor: Colors.green,
              //backgroundImage: AssetImage('assets/images/nature.jpg'),
              //radius: 100,
              //minRadius: .001,
              maxRadius: 55,
          ),
        //),
      )
    );
  }

}