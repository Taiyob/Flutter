import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(NormalApps());
}

class NormalApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: RichTexts(),
    );
  }

}

class RichTexts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RichTextState();
  }

}

class RichTextState extends State<RichTexts>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text Widget'),
      ),
     body: Center(
       child: RichText(
         text: const TextSpan(
           style: TextStyle(
             color: Colors.grey,
             fontSize: 21,
           ),
           children: <TextSpan>[
             TextSpan(text: 'Hellow '),
             TextSpan(text: 'World!',style: TextStyle(
               fontSize: 25,
               color: Colors.purple,
               fontWeight: FontWeight.bold,
             )),
             TextSpan(
               text: ' Welcome to',
             ),
             TextSpan(
               text: 'My world!',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.green,
                 fontSize: 34,
                 fontStyle: FontStyle.italic,
                 fontFamily: 'FontMain',
               ),
             ),

           ],
         ),
       ),
     ),
   );
  }

}




// Row(
//   children: [
//     Text('Hellow ', style: TextStyle(fontSize: 16,color: Colors.blue),),
//     Text(' World!',style: TextStyle(fontSize: 34,color: Colors.pink,fontWeight: FontWeight.bold),),
//   ],
// ),