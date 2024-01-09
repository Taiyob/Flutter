import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AdditionalInfo()));
}

class AdditionalInfo extends StatefulWidget {
  static const String id = 'additional_info';

  const AdditionalInfo({Key? key}) : super(key: key);

  @override
  State<AdditionalInfo> createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {
  String? selectValue; // Changed to nullable to handle initial state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Additional Info'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text('Gender'),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),),
                    value: 'male',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 'female',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Others',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    value: 'others',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
