import 'package:flutter/material.dart';
import 'package:flutter_basics/model/travel.dart';

class MostPopularTravel extends StatefulWidget {
  const MostPopularTravel({Key? key}) : super(key: key);

  @override
  State<MostPopularTravel> createState() => _MostPopularTravelState();
}

class _MostPopularTravelState extends State<MostPopularTravel> {
  final most_popular = Travel.mostPopularTravel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            var travel = most_popular[index];
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(travel.img,height: 150,width: 150,fit: BoxFit.cover,),
                ),
              ],
            );
          },
          separatorBuilder: (context,index)=>SizedBox(width: 15.0,),
          itemCount: most_popular.length,
      ),
    );
  }
}
