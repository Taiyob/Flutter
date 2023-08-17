import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ShortApps());
}

class ShortApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: RangeSliders(),
    );
  }

}

class RangeSliders extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RangeSliderState();
}

class RangeSliderState extends State<RangeSliders>{
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {
      RangeLabels labels =  RangeLabels(values.start.toString(), values.end.toString());
      return Scaffold(
          appBar: AppBar(
            title: Text('Range Slider'),
          ),
        body: Center(
          child: RangeSlider(
              values: values,
              labels: labels,
              activeColor: Colors.green,
              inactiveColor: Colors.pink,
              divisions: 10,
              min: 0,
              max: 100,
              onChanged: (newValue){
                values = newValue;
                setState(() {

                });
              },
          ),
        ),
      );
  }

}