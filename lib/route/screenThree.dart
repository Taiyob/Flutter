import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    print('counter: ${count++}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Route(screen-three)',style: TextStyle(fontFamily: 'Pacifico'),),
      ),
      body: Container(
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                 itemBuilder: (context,index){
                 return ListTile(
                   leading: Icon(Icons.account_circle),
                   title: Text('From screen three',style: TextStyle(color: Colors.deepOrange,fontFamily: 'Pacifico'),),
                   onTap: (){},
                 );
              }),
            )
          ],
        ),
      ),
    );
  }
}
