import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyFullApps());
}

class MyFullApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BMIAPPS(),
    );
  }

}

class BMIAPPS extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BMIAPPSTATES();

}

class BMIAPPSTATES extends State<BMIAPPS>{
  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inchController = TextEditingController();
  var result = '';
  var bgColor = Colors.lime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('BMI APP',style: TextStyle(
          backgroundColor: Colors.cyan,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 21,
          fontStyle: FontStyle.italic,
        ),)),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            //color: Colors.purple,
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('BMI',style: TextStyle(
                     fontSize: 34,
                     fontWeight: FontWeight.w900,
                   ),),
                   SizedBox(height: 21,),
                   TextField(
                     controller: weightController,
                     decoration: InputDecoration(
                       label: Text('Enter your weight KG'),
                       prefixIcon: Icon(Icons.line_weight),
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 11,),
                   TextField(
                     controller: feetController,
                     decoration: InputDecoration(
                       label: Text('Enter your Height in Feet'),
                       prefixIcon: Icon(Icons.height),
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 11,),
                   TextField(
                     controller: inchController,
                     decoration: InputDecoration(
                       label: Text('Enter your Height in Inch'),
                       prefixIcon: Icon(Icons.height),
                     ),
                     keyboardType: TextInputType.number,
                   ),
                   SizedBox(height: 16,),
                   ElevatedButton(
                       onPressed: (){
                        var wt = weightController.text.toString();
                        var ft = feetController.text.toString();
                        var inch = inchController.text.toString();
                        if(wt!='' && ft!='' && inch!=''){
                          var iWt = int.parse(wt) ;
                          var iFt = int.parse(ft);
                          var iInch = int.parse(inch);
                          var tInch = (iFt*12)+iInch;
                          var tCm = tInch*2.54;
                          var tM = tCm/100;
                          var bmi = iWt/(tM*tM);
                          var msg = '';
                          if(bmi>25){
                             msg = 'You are over weight';
                             bgColor = Colors.orange;
                          }else if(bmi<18){
                            msg = 'You are under weight';
                            bgColor = Colors.red;
                          }else{
                            msg = 'You are healthy';
                            bgColor = Colors.green;
                          }
                          setState(() {
                            result = '${msg} \n Your BMI is: ${bmi.toStringAsFixed(3)}';
                          });
                        } else{
                          setState(() {
                            result = 'Please fill all the required Blanks';
                          });
                        }
                   }, child: Text('calculate')),
                   SizedBox(height: 11,),
                   Text(result, style: TextStyle(fontSize: 21),),
                 ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}