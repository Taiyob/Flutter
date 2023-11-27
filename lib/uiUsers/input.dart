import 'package:flutter/material.dart';

void main(){
  runApp(InputField());
}

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.orange,
                enabled: true,
                style: TextStyle(fontSize: 18,color: Colors.red),
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.arrow_forward),
                  hintText: 'email',
                  labelText: 'Email',
                  hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellowAccent)),
                ),
                onChanged: (value){
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
