import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenOne.dart';
import 'package:flutter_basics/route/screenThree.dart';

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
        title: const Text(
          'Route System(screen-two)',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        backgroundColor: const Color(0xff764abc),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenThree.id);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenOne()));
                },
                child: const Text(
                  'go-screen-three',
                  style: TextStyle(fontFamily: 'Pacifico'),
                )),
            SizedBox(height: 10,),
            AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText(
                    'Upcomming animation',
                  ),
                  RotateAnimatedText('This is rorate',textStyle: TextStyle(fontSize: 50)),
                ],
              totalRepeatCount: 4,
            ),
          ],
        ),
      ),
    );
  }
}
