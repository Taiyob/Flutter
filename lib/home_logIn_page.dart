import 'package:flutter/material.dart';



void main() {
  runApp(const LoginPage());
}
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double width = 50.0, height = 50.0;
  double customFontSize = 10;
  String defaultFontFamily = 'Roboto-Light.ttf';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                //Get.to( ProductScreen(fromCategory : false) );
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                        SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                //Get.to( ProductScreen(fromCategory : false) );
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                //Get.to(ProductScreen(fromCategory : false));
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                //Get.to(ProductScreen(fromCategory : false));
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                //Get.to(ProductScreen(fromCategory : false));
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                //Get.to(ProductScreen(fromCategory : false));
              },
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: width,
                      height: height,
                      decoration: const BoxDecoration(

                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.white),
                      child:
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset(
                          "assets/images/category.png",
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: const Color(0xFF1E1E1E),
                          fontFamily: 'Roboto-Light.ttf',
                          fontSize: customFontSize),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}











