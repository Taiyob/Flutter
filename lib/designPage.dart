import 'package:flutter/material.dart';
import 'package:flutter_basics/travelinfo.dart';
import 'package:flutter_basics/widgets/most_popular.dart';

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
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Travel Blog',style: TextStyle(fontSize: 36.0),),
          const Expanded(flex:2,child: TravelInfo()),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Most Popular'),
                Text('View All'),
              ],
            ),
          ),
          const Expanded(flex:1,child: MostPopularTravel()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    color: Colors.grey,
                  ),
                  height: 8,
                  width: 150,
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
