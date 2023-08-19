import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation Details'),
      ),
      body: Container(
        child: Hero(
          tag: 'gallary',
          child: Image.asset('assets/images/only.jpg'),
        ),
      ),
    );
  }

}