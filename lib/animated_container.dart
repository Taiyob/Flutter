import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MovingApps());
}
class MovingApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: AnimatedApps(),
    );
  }
  
}


class AnimatedApps extends StatefulWidget{
  @override
  State<AnimatedApps> createState() => _AnimatedAppsState();
}

class _AnimatedAppsState extends State<AnimatedApps> {
  var _width = 200.00;
  var _height = 100.00;
  bool flag = true;
  //Color bgcolor =  Colors.indigo;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
      color :  Colors.indigo,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             AnimatedContainer(
               decoration: myDecor,
                 duration: Duration(seconds: 2),
               //curve: Curves.fastOutSlowIn,
               //curve: Curves.slowMiddle,
               //curve: Curves.bounceInOut,
               curve: Curves.easeInCubic,
               width: _width,
               height: _height,
               //color: bgcolor,
             ),
             ElevatedButton(onPressed: (){
               setState(() {
                 if(flag){
                   _width = 100.00;
                   _height = 200.00;
                   flag = false;
                   myDecor = BoxDecoration(
                     borderRadius: BorderRadius.circular(21),
                       color: Colors.orange,
                   );
                 } else{
                   _width = 200.00;
                   _height = 100.00;
                   flag = true;
                   myDecor = BoxDecoration(
                     borderRadius: BorderRadius.circular(21),
                     color: Colors.blue,
                   );
                 }
               });
             }, child: Text('animate'))
           ],
        ),
      ),
    );
  }
}