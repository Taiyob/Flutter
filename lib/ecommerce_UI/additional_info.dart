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
        // toggleButtonsTheme: ToggleButtonsThemeData(
        //   color: Colors.orange, // Set your desired color
        //   selectedColor: Colors.red, // Set your desired selected color
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: Text('Gender',style: TextStyle(color: Colors.grey),),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  _CustomRadio(
                    label: 'Male',
                    value: 'Male',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                  _CustomRadio(
                    label: 'Female',
                    value: 'Female',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                  _CustomRadio(
                    label: 'Others',
                    value: 'Others',
                    groupValue: selectValue,
                    onChanged: (value) {
                      setState(() {
                        selectValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomRadio<T> extends StatelessWidget {
  final String label;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const _CustomRadio({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<T>(
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        GestureDetector(
          onTap: () {
            onChanged?.call(value);
          },
          child: Text(
            label,
            style: TextStyle(fontSize: 16), // You can adjust the font size
          ),
        ),
      ],
    );
  }
}
