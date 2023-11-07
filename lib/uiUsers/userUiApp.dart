import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('assets/images/logoLogin.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff203142)),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: Color(0xfff9703b)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff203142)),
                )),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                    child: Text(
                  'Interpreting oil analysis, \nreports is only meaningful.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff4c5980)),
                )),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: TextFormField(
                    decoration:  InputDecoration(
                        hintText: 'Email',
                        fillColor: Color(0xfff8f9f8),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Color(0xff323f4b),
                        ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                    ),
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xfff8f9f8),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff323f4b),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off_outlined,color: Color(0xff323f4b),),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox( height: 80,),
                Container(
                  height: 50,
                  width: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xfff9703b),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: const Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff4c5980))),
                    Text('Sign Up',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xfff9703b),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
