import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/details_hero.dart';

void main(){
  runApp(HeroApps());
}
class HeroApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HeroAnimation(),
    );
  }

}


class HeroAnimation extends StatefulWidget{
  @override
  State<HeroAnimation> createState() => HeroAnimationState();
}

class HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation App'),
      ),
      body: Container(
        child: Center(
           child: InkWell(
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context)=>DetailsPage(),
                   ));
             },
             child: Hero(
               tag: 'gallary',
               child: Image.asset('assets/images/only.jpg',width: 150,height: 150,),
             ),
           ),
        ),
      ),
    );
  }
}