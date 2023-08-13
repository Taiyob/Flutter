import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FullApps());
}

class FullApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TimePicker',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: TimePicker(),
    );
  }

}

class TimePicker extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TimePickerState();
  }

}

class TimePickerState extends State<TimePicker>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('TimePicker & DatePicker', style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text('Select Date',style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: () async {
              DateTime? datePicker= await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2024));
              if(datePicker!=null){
                print('Date Selected: ${datePicker.day}-${datePicker.month}-${datePicker.year}');
              }
            }, child: Text('Select')),
            ElevatedButton(onPressed: () async {
              TimeOfDay? pickTime= await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
              );
              if(pickTime!=null){
                print('Time Selected: ${pickTime.hour}: ${pickTime.minute}');
              }
            }, child: Text('Select Time')),
          ],
        ),
      ),
    );
  }

}