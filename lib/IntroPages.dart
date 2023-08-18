import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/oneToanotherScreen.dart';
import 'package:flutter_basics/ui_helper/utill.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am From Intro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('If you click, I will go another page.', style: mTextstyle21(),),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenWidget(),));
              }, child: Text('Next')
            ),
          ],
        ),
      ),
    );
  }

}