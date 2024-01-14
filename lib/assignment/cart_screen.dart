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
      "productName": "Pullover",
      "productColor": "Black",
      "productSize": "L",
      "price": 51
    },
    {
      "image": "https://ibb.co/M5gPRXb",
      "productName": "T-Shirt",
      "productColor": "Gray",
      "productSize": "L",
      "price": 30
    },
    {
      "image": "https://ibb.co/M5gPRXb",
      "productName": "Sport Dress",
      "productColor": "Black",
      "productSize": "M",
      "price": 43
    }
  ];
  int count = 1;
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'My Bag',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ), 
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 18, right: 18, left: 18),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/cart1.png',
                                  fit: BoxFit.fitHeight,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 220,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              cartItems[index]["productName"]
                                                  as String,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Image.asset(
                                                'assets/images/icon.png'),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Color:',
                                            style: TextStyle(
                                              color: Color(0xFF9B9B9B),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            cartItems[index]["productColor"]
                                                as String,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Text(
                                            'Size:',
                                            style: TextStyle(
                                              color: Color(0xFF9B9B9B),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                              cartItems[index]["productSize"]
                                                  as String,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Row(
                                        children: [
                                          FloatingActionButton(
                                            onPressed: () {
                                              count--;
                                              setState(() {
                                                
                                              });
                                            },
                                            child: Text(
                                              '-',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 32),
                                            ),
                                            backgroundColor: Colors.white,
                                            mini: true,
                                            shape: CircleBorder(),
                                            elevation: 4.0,
                                            heroTag:
                                                null,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(count.toString()),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          FloatingActionButton(
                                            onPressed: () {
                                              count++;
                                              setState(() {
                                                
                                              });
                                            },
                                            child: Text(
                                              '+',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 32),
                                            ),
                                            backgroundColor: Colors.white,
                                            mini: true,
                                            shape: CircleBorder(),
                                            elevation: 4.0,
                                            heroTag:
                                                null,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                          ),
                                          SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            '\$${cartItems[index]["price"]}',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text('124\$',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Center(
                child: Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(25), // Border radius
                        ),
                      ),
                      child: Text(
                        'CHECK OUT',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
