import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? Key}):super(key:Key);
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: Text(widget.title),
          title: Text('Flutter Container'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.pink,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.orange,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.black,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.yellow,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.brown,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.lime,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.teal,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.deepPurple,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),
                          height: 200,
                          width: 200,
                          color: Colors.tealAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.lightBlue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.lime,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.limeAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.lightBlue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.pink,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.black87,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.teal,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.brown,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.black26,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.indigoAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.yellowAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.amberAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.cyan,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.white,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  //width: 200,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),
        )
    );
  }
}