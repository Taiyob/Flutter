import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DropdownExample(),
    );
  }
}


class DropdownExample extends StatefulWidget {
  const DropdownExample({Key? key}) : super(key: key);

  @override
  State<DropdownExample> createState() => _DropdownExamplwState();
}

class _DropdownExamplwState extends State<DropdownExample> {

  var chosenValue;
  List<String> languageList = ["English", "Hindi" , "French" , "Spanish"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: DropdownButton<String>(
                elevation: 1,
                underline: SizedBox(), // to remove underline
                isExpanded: true,
                hint: const Text("Select language"),
                iconSize: 50,
                iconEnabledColor: Colors.black,
                icon: const Icon(Icons.arrow_drop_down_sharp,size: 25,),
                value: chosenValue ,
                style: TextStyle(fontSize: 16,color: Colors.green, fontWeight: FontWeight.normal),
                items: languageList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState((){
                    chosenValue = value;
                  });
                },
                alignment:AlignmentDirectional.centerStart ,
                iconDisabledColor:Colors.purple,
                dropdownColor: Colors.lime,
                isDense: true,
                disabledHint: Container(
                  color: Colors.deepOrange,
                ),
                selectedItemBuilder: (BuildContext context) {
                  return languageList!.map<Widget>((String item) {
                    //This widget is shown after you select an item
                    return Container(
                      alignment: Alignment.centerLeft,
                      constraints: const BoxConstraints(minWidth: 100),
                      child: Text(
                        item,
                        style: const TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w600),
                      ),
                    );
                  }).toList();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
