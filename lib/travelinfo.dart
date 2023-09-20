import 'package:flutter/material.dart';
import 'package:flutter_basics/model/travel.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({Key? key}) : super(key: key);

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  final travel_list = Travel.travelInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: travel_list.length,
          itemBuilder: (context,index){
        var travel = travel_list[index];
        return Stack(
          children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(20.0),
               child: Padding(
                 padding: const EdgeInsets.only(right: 10.0),
                 child: Image.asset(travel.img,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
               ),
             ),
            Positioned(
                bottom: 200,
                left: 20.0,
                child: Column(
                  children: [
                    Text(travel.name,style: TextStyle(fontSize: 20,color: Colors.pink),),
                    Text(travel.location,style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ],)),
          ],
        );
      }),
    );
  }
}
