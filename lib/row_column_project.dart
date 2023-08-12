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
          title: Text('Flutter Container', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500)),
        ),
        body:Container(
          height: 400,
          child: //Row
            Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //mainAxisAlignment: MainAxisAlignment.start,

            //crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: (){}, child: Text('Click Me'),)
                    ],
                  ),
                  Text('Aa', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
                  Text('Bb', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
                  Text('Cc', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
                  Text('Dd', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
                ],
              ),
              Text('A', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
              Text('B', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
              Text('C', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
              Text('D', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
              Text('E', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),),
              ElevatedButton(onPressed: (){

              },  child: Text('Click', style: TextStyle(fontSize: 25, fontFamily:'FontMain', fontWeight: FontWeight.w500),))
            ],
          ),

        )
    );
  }
}