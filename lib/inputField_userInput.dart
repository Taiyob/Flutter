import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// user input in flutter..................
void main(){
  runApp(InputField());
}

class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: UserInput(),
    );
  }

}

class UserInput extends StatelessWidget{
  var emailText=TextEditingController();
  var passText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserInput'),
      ),
      body: Center(
          child: Container(
            width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    //enabled: false,
                    keyboardType: TextInputType.phone,
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          )
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          )
                      ),
                      //suffixText: 'USER NAME',
                      suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye, color: Colors.green,),
                          onPressed: (){

                          },
                      ),
                      prefixIcon: Icon(Icons.email, color: Colors.green,),

                      // border: OutlineInputBorder(
                      // )
                    ),
                  ),
                  Container(height: 15,),
                  TextField(
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          )
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                            )
                        ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black45,
                            width: 2,
                          )
                      ),
                      // border: OutlineInputBorder(
                      // )
                    ),
                  ),
                  ElevatedButton (onPressed: (){
                    String uEmail= emailText.text.toString();
                    String uPass= passText.text;
                    print('Email: $uEmail, Pass: $uPass');
                  }, child: Text(
                    'Login', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ))
                ],
              )
          )
      ),
    );
  }

}