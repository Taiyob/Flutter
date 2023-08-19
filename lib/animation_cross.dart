import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FunnyApps());
}
class FunnyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CrossAnimation(),
    );
  }

}


class CrossAnimation extends StatefulWidget{
  @override
  State<CrossAnimation> createState() => CrossAnimationStates();
}

class CrossAnimationStates extends State<CrossAnimation> {
  bool isFirst = true;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //    Timer(Duration(seconds: 4),(){
  //      reload();
  //    });
  // }
  void reload(){
    setState(() {
      if(isFirst){
        isFirst = false;
      } else{
        isFirst = true;
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
               duration: Duration(seconds: 2),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
              secondChild: Image.asset('assets/images/only.jpg',
                width: 200,
                height: 200,
              ),
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceOut,
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            ElevatedButton(onPressed: (){
              //isFirst = false;
              reload();
            }, child: Text('show'))
          ],
        ),
      ),
    );
  }
}