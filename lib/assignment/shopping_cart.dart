import 'package:flutter/material.dart';
import 'package:flutter_basics/assignment/cart_screen.dart';

main(){
  runApp(ShoppingCart());
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: CartScreen(),
    );
  }
}
