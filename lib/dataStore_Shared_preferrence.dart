import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(NormalUsingApps());
}
class NormalUsingApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: DataStoreRetrieve(),
    );
  }

}

class DataStoreRetrieve extends StatefulWidget{
  @override
  State<DataStoreRetrieve> createState() => _DataStoreRetrieveState();
}

class _DataStoreRetrieveState extends State<DataStoreRetrieve> {
  var nameController = TextEditingController();
  static const String KEYNAME = 'name';
  var nameValue = 'No value saved';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Retrieve'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TextField(
               controller: nameController,
              decoration: InputDecoration(
                label: Text('Name'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
              ),
             ),
            ElevatedButton(onPressed: () async {
              //var name = nameController.text.toString();
              var prefs = await SharedPreferences.getInstance();
              prefs.setString(KEYNAME, nameController.text.toString());
            }, child: Text('save')),
            SizedBox(height: 11,),
            Text(nameValue),
          ],
        ),
      ),
    );
  }

  Future<void> getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);
    nameValue = getName ?? 'No value saved';
    setState(() {
      
    });
  }
}