import 'package:flutter/material.dart';

class ButtonForSplash extends StatelessWidget {
  const ButtonForSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90),
                bottomLeft: Radius.circular(90),
                //topRight: Radius.circular(95.0),
                //bottomRight: Radius.circular(90),
              ),
              border: Border.all(
                color: Colors.red, // Set your border color here
                width: 2.0, // Set your border width here
              ),
            ),
            child: Center(
              child: Text(
                'বাং',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(95.0),
                bottomRight: Radius.circular(90),
              ),
              border: Border.all(
                color: Colors.red, // Set your border color here
                width: 2.0, // Set your border width here
              ),
            ),
            child: Center(
              child: Text(
                'ENG',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
