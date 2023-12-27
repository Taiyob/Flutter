import 'package:flutter/material.dart';
import 'package:flutter_basics/ecommerce_UI/button_for_splash.dart';

void main() {
  runApp(RegisterScreenOne());
}

class RegisterScreenOne extends StatefulWidget {
  const RegisterScreenOne({Key? key}) : super(key: key);

  @override
  State<RegisterScreenOne> createState() => _RegisterScreenOneState();
}

class _RegisterScreenOneState extends State<RegisterScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nagad',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
            Container(
              margin: EdgeInsets.only(left: 190, top: 40),
              child: ButtonForSplash(),
            ),
            Image.asset(
              'assets/images/nagadred.png',
              height: 200,
            ),
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.redAccent, // Customize the color as needed
                    width: 2.0, // Customize the width as needed
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red, // Customize the color as needed
                    width: 2.0, // Customize the width as needed
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('NEXT'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Background color
                  foregroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0), // Border radius
                    side: BorderSide(color: Colors.red, width: 3.0),
                  ), // Text color
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              'Not register yet?',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            )),
            SizedBox(
              height: 6,
            ),
            Center(
                child: Text(
              'Register Now',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
            )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/images/location.png'),
                  SizedBox(height: 8.0), // Adjust the height as needed
                ],
              ),
              label: 'Store Location',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/images/offers.png'),
                  SizedBox(height: 8.0), // Adjust the height as needed
                ],
              ),
              label: 'Store Location',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Image.asset('assets/images/help.png'),
                  SizedBox(height: 8.0), // Adjust the height as needed
                ],
              ),
              label: 'Store Location',
            ),
            // BottomNavigationBarItem(
            //     icon: Image.asset('assets/images/offers.png'), label: 'Offers'),
            // BottomNavigationBarItem(
            //     icon: Image.asset('assets/images/help.png'), label: 'Help'),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
