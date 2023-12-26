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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 190, top: 40),
              child: ButtonForSplash(),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/nagadred.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 80,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                border: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                ),
                // border: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.black,
                //     width: 2,
                //   ),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.black,
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
