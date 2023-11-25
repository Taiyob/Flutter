import 'package:flutter/material.dart';

void main() {
  runApp(StateAppWidget());
}

class StateAppWidget extends StatefulWidget {
  StateAppWidget({Key? key}) : super(key: key);

  @override
  State<StateAppWidget> createState() => _StateAppWidgetState();
}

class _StateAppWidgetState extends State<StateAppWidget> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Center(
            child: Text(
          x.toString(),
          style: const TextStyle(fontSize: 50),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
            print(x.toString());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
