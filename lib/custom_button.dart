import 'package:flutter/material.dart';



void main(){
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

Widget ButtonWidget(){
  return Scaffold(
    appBar: AppBar(
      title: Text('custom button'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
                // boxShadow: const [
                //   BoxShadow(
                //     offset: Offset(2.0, 5.0),
                //     blurRadius: 0.9,
                //     color: Colors.lightGreenAccent,
                //   ),
                // ]
              ),
              child: Container(
                //margin: EdgeInsets.all(18.0),
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    //topLeft: Radius.circular(95.0),
                    //bottomLeft: Radius.circular(95.0),
                    bottomRight: Radius.circular(900),
                  ),
                ),
              ),
            ) ,
          ],
      ),
    ),
  );
}

