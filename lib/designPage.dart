import 'package:flutter/material.dart';
import 'package:flutter_basics/travelinfo.dart';

class DesignPage extends StatefulWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  State<DesignPage> createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.menu,size: 30.0,color: Colors.purpleAccent,),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Travel Blog',style: TextStyle(fontSize: 36.0),),
          Expanded(flex:2,child: TravelInfo()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Most Popular'),
              Text('View All'),
            ],
          ),
          Expanded(flex:1,child: Placeholder()),
        ],
      )
    );
  }
}
