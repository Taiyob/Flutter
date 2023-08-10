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
        body: Center(
          child: InkWell(
            onTap: (){
              print('Container now Ontap');
            },
            onLongPress: (){
              print('Container now Longtap');
            },
            onDoubleTap: (){
              print('Container now Doubletap');
            },
            child: Container(
                height: 200,
                width: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                    onTap: (){
                      print('From Text, I am Ink Well');
                    },
                      child: Text('ME INKWELL', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                      ))),
            ),
          ),
        )
    );
  }
}