import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenTwo.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'screen_one';
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    print('counter: ${count++}');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Route System(screen-one)',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png'),
              ),
              accountName: Text(
                'MD OLI ULLAH ',
                style: TextStyle(fontFamily: 'Pacifico'),
              ),
              accountEmail: Text(
                'oli1412001@gmail.com',
                style: TextStyle(fontFamily: 'Pacifico'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'Profile',
                style: TextStyle(fontFamily: 'Pacifico'),
              ),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text(
                'Phone',
                style: TextStyle(
                    decoration: TextDecoration.overline,
                    color: Colors.orange,
                    fontFamily: 'Pacifico'),
              ),
              onTap: () {
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //Navigator.pop(context);
                Navigator.pushNamed(context, ScreenTwo.id);
              },
              child: const Text(
                'go-screen-two',
                style: TextStyle(fontFamily: 'Pacifico'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
