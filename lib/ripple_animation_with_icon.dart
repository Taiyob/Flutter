import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(EffectApps());
}
class EffectApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: RippleAnimationWidget(),
    );
  }

}

class RippleAnimationWidget extends StatefulWidget{
  @override
  State<RippleAnimationWidget> createState() => _RippleAnimationWidgetState();
}

class _RippleAnimationWidgetState extends State<RippleAnimationWidget> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  var listRadius = [
    100.0,200.0,300.0,400.0,500.0,600.0
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 4),lowerBound: 0.5);
    //_animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.addListener(() {
      setState(() {

      });
    });
    _animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ripple App'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyContainer(listRadius[0]),
            buildMyContainer(listRadius[1]),
            buildMyContainer(listRadius[2]),
            buildMyContainer(listRadius[3]),
            buildMyContainer(listRadius[4]),
            Icon(Icons.add_call, color: Colors.white,size: 34,),
          ],
        ),
      ),
    );
  }
  Widget buildMyContainer(radius){
    return Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.teal.withOpacity(1.0 - _animationController.value),
      ),
    );
  }
}