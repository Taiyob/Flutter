import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenOne.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route System'),
        backgroundColor: Color(0xff764abc),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.pushNamed(context, ScreenOne.id);
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne()));
            }, child: Text('go-screen-two')),
          ],
        ),
      ),
    );
  }
}
