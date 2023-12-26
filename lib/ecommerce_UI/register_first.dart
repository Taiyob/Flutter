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
            Image.asset('assets/images/nagadred.png',height: 200,),
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 80,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black, // Customize the color as needed
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
          ],
        ),
      ),
    );
  }
}
