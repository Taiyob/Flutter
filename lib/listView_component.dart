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
    var arrNames=['Taiyob','Siam','Oli','Anik'];
    return Scaffold(
        appBar: AppBar(
          //title: Text(widget.title),
          title: Text('Flutter Container'),
        ),
        body: ListView.separated(itemBuilder: (context, index){
              //ListView.builder(itemBuilder: (context, index){
          //return Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),);
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
              ),
              ],
            ),
          );
        },
        itemCount: arrNames.length,
        //itemExtent: 100,
          //scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index){
              return Divider(height: 100, thickness: 1,);
          },
        )



        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   reverse: true,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
        //     )
        //   ],
        // )
    );
  }
}