import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/homeDemoPage.dart';
import 'package:flutter_basics/widgets/myProfile.dart';
import 'package:flutter_basics/widgets/mySearch.dart';


void main(){
  runApp(const MaterialApp(home: NavDemo(),));
}

class NavDemo extends StatefulWidget {
  const NavDemo({Key? key}) : super(key: key);

  @override
  State<NavDemo> createState() => _NavDemoState();
}

class _NavDemoState extends State<NavDemo> {
  List<Widget>  pages = [MyDemoHome(),MyProfile(),MySearch()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           title:const Text('Nav Demo'),
       ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.orangeAccent,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        selectedFontSize: 25,
        unselectedFontSize: 20,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
              Icons.home,
          ),
              label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
