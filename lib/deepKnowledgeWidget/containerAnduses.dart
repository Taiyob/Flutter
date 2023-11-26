import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContainerClearity());
}

class ContainerClearity extends StatefulWidget {
  const ContainerClearity({Key? key}) : super(key: key);

  @override
  State<ContainerClearity> createState() => _ContainerClearityState();
}

class _ContainerClearityState extends State<ContainerClearity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(.3),
                      //padding: EdgeInsets.all(0),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        border: Border.all(
                          color: Colors.lightGreenAccent,
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            blurRadius: 20,
                            //blurStyle: BlurStyle.normal,
                            //spreadRadius: 10,
                            //offset: Offset.infinite
                          )
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                            'Container-one',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(.3),
                      //padding: EdgeInsets.all(0),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                        border: Border.all(
                          color: Colors.lightGreenAccent,
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.red,
                            blurRadius: 20,
                            //blurStyle: BlurStyle.normal,
                            //spreadRadius: 10,
                            //offset: Offset.infinite
                          )
                        ],
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                            'Container-one',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                height: 250,
                width: 250,
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(.3),
                //padding: EdgeInsets.all(0),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                  ),
                  border: Border.all(
                    color: Colors.lightGreenAccent,
                    width: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 20,
                      //blurStyle: BlurStyle.normal,
                      //spreadRadius: 10,
                      //offset: Offset.infinite
                    )
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                child: const Center(
                    child: Text(
                  'Container-one',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
