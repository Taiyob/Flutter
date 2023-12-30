import 'package:flutter/material.dart';

class ScanData extends StatefulWidget {
  static const String id = 'scan_data';
  const ScanData({Key? key}) : super(key: key);

  @override
  State<ScanData> createState() => _ScanDataState();
}

class _ScanDataState extends State<ScanData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanned Data'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('NID Number'),
            
          ),
        ],
      ),
    );
  }
}
