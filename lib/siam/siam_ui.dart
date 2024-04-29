import 'package:flutter/material.dart';

void main() {
  runApp(SiamUI());
}

class SiamUI extends StatefulWidget {
  const SiamUI({Key? key}) : super(key: key);

  @override
  State<SiamUI> createState() => _SiamUIState();
}

class _SiamUIState extends State<SiamUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: ButtonUI(),
    );
  }
}

class ButtonUI extends StatelessWidget {
  const ButtonUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SiamPage()));
          },
          child: Text('Go'),
        ),
      ),
    );
  }
}

class SiamPage extends StatelessWidget {
  const SiamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Center(child: Text('এডুকেশন ফি')),
        actions: [
          Image.asset(
            'assets/images/bkash.png',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white, width: 1),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60, left: 10),
                      child: Text(
                        'প্রাপক',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/drmc.jpg',
                      height: 100,
                      width: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dhaka Residential Model College',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text('কলেজ'),
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'বিল সময়সীমা',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )),
                SizedBox(height: 10), // Added SizedBox for spacing
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      fillColor: Colors.grey[200], // Set the fill color to grey
                      filled: true, // Ensure the input field is filled
                    ),
                    value: 'March 2024', // Set the initial value
                    items: [
                      DropdownMenuItem<String>(
                        value: 'March 2024',
                        child: Text(
                          'March 2024',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'option2',
                        child: Text('Option 2'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'option3',
                        child: Text('Option 3'),
                      ),
                    ],
                    onChanged: null, // Disable onChanged event
                    autovalidateMode: AutovalidateMode.disabled,
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text('স্টুডেন্ট আইডি',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text('m20411',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('একাউন্টের নাম',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey)),
                            Text('MD.Siam Ahmed',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text('পরিশোধের শেষ সময়',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(''),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('স্ট্যাটাস',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey)),
                            Text('UNPAID',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  height: 8,
                  thickness: 3,
                  color: Colors.grey.shade300,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Text('পরিমাণ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey)),
                    ],
                  ),
                ),
                Text('৳2,350.00',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.pink)),
                Text('ব্যবহারযোগ্য ব্যালেন্স: ৳2.87',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),





      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        onTap: (value){

        },
        selectedFontSize: 25,
        unselectedFontSize: 20,
        //currentIndex: currentIndex,
        items:  [
          BottomNavigationBarItem(
            icon: SizedBox(),
            label: 'পরের ধাপে যেতে ট্যাপ করুন',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_forward,
            ),
            label: '',
          ),
        ],
      ),

        //bottomNavigationBar:NavigationBar()


      // Adding the custom footer using a Stack
      // floatingActionButton: SizedBox(
      //   width: double.infinity,
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         bottom: 0,
      //         left: 0,
      //         right: 0,
      //         child: Container(
      //           color: Colors.grey[300], // Gray background color
      //           padding: EdgeInsets.symmetric(
      //               horizontal: 16,
      //               vertical: 10
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               // Text on the right side
      //               Text(
      //                 'Owner: Your Name',
      //                 style: TextStyle(fontSize: 16),
      //               ),
      //               // Arrow icon on the left side
      //               IconButton(
      //                 onPressed: () {
      //                   // Navigate to another screen
      //                 },
      //                 icon: Icon(Icons.arrow_forward),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),





    );
  }
}
