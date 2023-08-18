import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(PracticeApps());
}

class PracticeApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: IconWidgets(),
    );
  }

}

class IconWidgets extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IconWidgetsState();
  }

}

class IconWidgetsState extends State<IconWidgets>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Widget'),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.add_business_rounded,
                  size: 50,
                  color: Colors.deepPurple,
                ),
              SizedBox(width: 11,),
              FaIcon(FontAwesomeIcons.amazon,
                color: Colors.purpleAccent,
                size: 50,
              ),
            ],
          )),
    );
  }

}



















