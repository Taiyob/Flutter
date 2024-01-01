import 'package:flutter/material.dart';

class ScanData extends StatefulWidget {
  static const String id = 'scan_data';
  const ScanData({Key? key}) : super(key: key);

  @override
  State<ScanData> createState() => _ScanDataState();
}

class _ScanDataState extends State<ScanData> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanned Data'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NID Number',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '1234567890123',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Applicant Name',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Mashrafee Bin Mortuza',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Applicants Father Name',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Rahim Uddin',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Applicants Mother Name',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Lipi Begum',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Date Of Birth',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '02/02/1980',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Present Address',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Kafrul, Dhaka Cantonement, Dhaka',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Parmanent Address',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Chumohoni, Solo Gram, Chittagrame',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    Text('Same as present address'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
