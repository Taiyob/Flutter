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
                 //child: Expanded(child: Container(child: Image.asset(travel.img)),),
                 padding: const EdgeInsets.only(right: 10.0),
                 child: Image.asset(travel.img,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
               ),
             ),
            Positioned(
                bottom: 200,
                left: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(travel.name,style: TextStyle(fontSize: 20,color: Colors.pink),),
                    Text(travel.location,style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ],
                )
            ),
            Positioned(
              //left: 280,
              //top: 210,
              right: 10,
                bottom:-10,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.arrow_forward_outlined,size: 35,),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                )
            ),
          ],
        );
      }),
    );
  }
}
