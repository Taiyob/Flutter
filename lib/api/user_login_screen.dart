import 'package:flutter/material.dart';
import 'package:flutter_basics/api/user_login_form.dart';



void main(){
  runApp(MaterialApp(home: UserLoginScreen(),));
}

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 18,),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Sign in with your email and password  \nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18,),
            UserLoginForm(),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalCard(
                  icon: "assets/icons/google-icon.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: () {},
                ),
                SocalCard(
                  icon: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(
                      fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    //Get.to(() => SignUpScreen());
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String? icon;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10), // Adjust as needed
        padding: EdgeInsets.all(12),
        height: 40, // Adjust as needed
        width: 40, // Adjust as needed
        decoration: BoxDecoration(
          color: const Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.wb_twilight),
      ),
    );
  }
}