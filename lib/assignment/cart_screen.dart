import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, Object>> cartItems = [
    {
      "image": "https://ibb.co/M5gPRXb",
      "productName": "Comfort Fit Jeans",
      "productColor": "Blue",
      "productSize": "M",
      "price": 39.99
    },
    {
      "image": "https://ibb.co/M5gPRXb",
      "productName": "Classic White T-Shirt",
      "productColor": "White",
      "productSize": "L",
      "price": 19.99
    },
    {
      "image": "https://ibb.co/M5gPRXb",
      "productName": "Running Shoes",
      "productColor": "Black",
      "productSize": "US 9",
      "price": 49.99
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFF9F9F9),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('My Bag'), // Your Text widget outside ListView
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                         Row(
                           children: [
                             // Image.asset(cartItems[index]["image"] as String ?? 'fallback_image_path'),
                             Image.network(cartItems[index]["image"] as String)
                           ],
                         ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
