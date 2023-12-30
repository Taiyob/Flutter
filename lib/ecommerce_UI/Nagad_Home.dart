import 'package:flutter/material.dart';

class HomeNagad extends StatefulWidget {
  static const String id = 'home_nagad';
  const HomeNagad({Key? key}) : super(key: key);

  @override
  State<HomeNagad> createState() => _HomeNagadState();
}

class _HomeNagadState extends State<HomeNagad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFF844B),
                      Color(0xFFF13C33),
                    ],
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/splashimg .png'),
                    const SizedBox(
                      height: 400,
                    ),
                    Image.asset('assets/images/dot.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '1.1.22.03',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
