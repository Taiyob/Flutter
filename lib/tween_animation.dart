import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

void main(){
  runApp(TrySmallApp());
}
class TrySmallApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: TweenAnimationApp(),
    );
  }

}

class TweenAnimationApp extends StatefulWidget{
  @override
  State<TweenAnimationApp> createState() => TweenAnimationAppState();
}

class TweenAnimationAppState extends State<TweenAnimationApp> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0,end:  200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.yellow).animate(animationController);
    animationController.addListener(() {
      print(animation.value);
      setState(() {
        
      });
    });
    animationController.forward();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
      ),
      body: Center(
        child: Container(
           width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}