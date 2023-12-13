import 'package:flutter/material.dart';
import 'package:flutter_basics/sharedPreference/sharedPreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InnerHome extends StatefulWidget {
  const InnerHome({Key? key}) : super(key: key);

  @override
  State<InnerHome> createState() => _InnerHomeState();
}

class _InnerHomeState extends State<InnerHome> {
  String email = '';
  String age = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inner Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Inner Home'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('email'),
              Text(email.toString()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40,
            ),
          ),
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Center(child: Text('Logout',style: TextStyle(fontSize: 20, color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
