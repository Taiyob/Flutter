import 'package:flutter/material.dart';

void main() {
  runApp(CustomButton());
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: ButtonWidget(),
    );
  }
}

Widget ButtonWidget() {
  return Scaffold(
    appBar: AppBar(
      title: Text('custom button'),
    ),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(left: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  bottomLeft: Radius.circular(90),
                  //topRight: Radius.circular(95.0),
                  //bottomRight: Radius.circular(90),
                ),
              ),
              child: Center(
                child: Text(
                  'Text 1',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 100),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(95.0),
                  bottomRight: Radius.circular(90),
                ),
              ),
              child: Center(
                child: Text(
                  'Text 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
