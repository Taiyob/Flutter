import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/button_widget.dart';
import 'package:flutter_basics/widgets/homeDemoPage.dart';
import 'package:flutter_basics/widgets/myProfile.dart';
import 'package:flutter_basics/widgets/mySearch.dart';


void main(){
  runApp(const MaterialApp(home: CustomBottomNavigation(),));
}

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  List<Widget> pages = [MyDemoHome(),MyProfile(),MySearch()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (val){
          setState(() {
            currentIndex = val;
          });
        },
      animationCurve: Curves.linearToEaseOut,
      backgroundColor: Colors.cyan,
      color: Colors.indigoAccent,
      items: [
        Icon(Icons.home,size: 25,),
        Icon(Icons.person,size: 25,),
        Icon(Icons.search,size: 25,),
      ]),
    );
  }
}
