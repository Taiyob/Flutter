import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/button_widget.dart';

void main (){
  runApp(MyAppHome());
}

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key});

  @override
  State<MyAppHome> createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> {
  DateTime? selectedDate;
  DateTime? selectedDate2;

  calculation() {
    if (selectedDate != null && selectedDate2 != null) {
      Duration difference = selectedDate2!.difference(selectedDate!);
      print(difference.inDays);
    } else {
      print("Please select both dates");
    }
  }

  caluletor() {
    if (selectedDate != null && selectedDate2 != null) {
      setState(() {
        var myResult = selectedDate!.difference(selectedDate2!).inDays;
        print(myResult);
      });
    } else {
      print("Please select both dates");
    }
  }

  dateSelector() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year+5),
      firstDate: DateTime(1997),
    );

    if (pickedDate != null && pickedDate != selectedDate2) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> dateSelector2() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year+5),
      firstDate: DateTime(1997),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate2 = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                dateSelector();
              },
              child: Text("Select Date"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                dateSelector2();
              },
              child: Text("Select Date 2"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculation();
              },
              child: Text("Calculate Difference"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                caluletor();
              },
              child: Text("Calculate"),
            ),
          ],
        ),
      ),
    );
  }
}



