import 'package:flutter/material.dart';
import 'package:flutter_basics/route/screenTwo.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
        title: const Text(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
              SizedBox(height: 10,),
               PinCodeTextField(
                 appContext: context,
                 length: 6,
                 keyboardType: TextInputType.number,
                 cursorColor: Colors.teal,
                 obscureText: true,
                 enabled: true,
                 obscuringCharacter: '*',
                 pinTheme:  PinTheme(
                   shape: PinCodeFieldShape.box,
                   borderRadius: BorderRadius.circular(10),
                   fieldHeight: 50,
                   fieldWidth: 40,
                   activeFillColor: Colors.teal,
                   inactiveFillColor: Colors.grey,
                   selectedFillColor: Colors.red,
                   inactiveColor: Colors.orange,
                   selectedColor: Colors.grey,
                 ),
                 onChanged: (value){

                 },
               ),
            ],
          ),
        ),
      ),
    );
  }
}
