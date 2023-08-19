import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MovingAnimationApps());
}
class MovingAnimationApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: AnimatedOpacityApps(),
    );
  }

}


class AnimatedOpacityApps extends StatefulWidget{
  @override
  State<AnimatedOpacityApps> createState() => AnimatedOpacityAppsState();
}

class AnimatedOpacityAppsState extends State<AnimatedOpacityApps> {
  var myOpacity = 1.0;
  var isVisible = true;
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
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),),
            ElevatedButton(onPressed: (){
                setState(() {
                  if(isVisible)  {
                    myOpacity = 0.0;
                    isVisible = false;
                  }else{
                     myOpacity = 1.0;
                     isVisible = true;
                  }
                  //myOpacity = 0.0;
                });
            }, child: Text('close'))
          ],
        ),
      ),
    );
  }
}