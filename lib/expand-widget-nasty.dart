import 'package:flutter/material.dart';


void main(){
  runApp(NastyScreen());
}
class NastyScreen extends StatelessWidget {
  const NastyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Example',
      home: Row(
        children: [
          Expanded(child:
            Container(
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Expanded(flex:2,child: Container(color: Colors.red,)),
                  Expanded(flex:3,child: Container(color: Colors.lightGreenAccent,)),
                  Expanded(
                      flex:2,
                      child: Container(
                        color: Colors.orange,
                        child: Row(
                          children: [
                            Expanded(flex:3,child: Container(color: Colors.pink,)),
                            Expanded(flex:2,child: Container(color: Colors.cyan,)),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        color: Colors.teal,
                        child: Row(
                          children: [
                            Expanded(flex:3,child: Container(color: Colors.greenAccent,)),
                            Expanded(flex:5,child: Container(color: Colors.brown,)),
                          ],
                        ),
                      )),
                ],
              ),
          )),
          Expanded(
              child: Container(
                color: Colors.purple,
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.blue,)),
                    Expanded(
                        child: Container(
                          color: Colors.yellowAccent,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    color: Colors.green,
                                    child: Column(
                                      children: [
                                        Expanded(flex:4,child: Container(color: Colors.deepOrange,)),
                                        Expanded(child: Container(color: Colors.white,)),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  child: Container(
                                    color: Colors.pinkAccent,
                                    child: Column(
                                      children: [
                                        Expanded(child: Container(color: Colors.amberAccent,)),
                                        Expanded(flex:4,child: Container(color: Colors.greenAccent,)),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
