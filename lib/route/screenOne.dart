import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'screen_one';
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
          children: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('go-screen-one')),
          ],
        ),
      ),
    );
  }
}
