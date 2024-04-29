import 'package:flutter/material.dart';
import 'package:flutter_basics/api/custom_home.dart';
import 'package:flutter_basics/api/response_object.dart';
import 'package:flutter_basics/api/urls.dart';

import 'login_model.dart';
import 'network_caller.dart';

class UserLoginForm extends StatefulWidget {
  const UserLoginForm({super.key});

  @override
  State<UserLoginForm> createState() => _UserLoginFormState();
}

class _UserLoginFormState extends State<UserLoginForm> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool _isLoginProgress = false;

  String? email;
  String? password;
  bool? remember = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "Email",
                labelStyle: const TextStyle(color: Colors.grey),
                floatingLabelStyle: const TextStyle(color: Colors.black),
                // labelStyle: const TextStyle(color: kPrimaryColor),
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                suffixIcon:
                const CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: passController,
              obscureText: true,
              onSaved: (newValue) => password = newValue,
              validator: (value) {
                if (value != null) {
                  if (value.length < 5 || value.contains('@')) {
                    return "Default Error Text";
                  }
                }
                return null;
              },
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.grey),
                floatingLabelStyle: const TextStyle(color: Colors.black),
                // labelStyle: const TextStyle(color: kPrimaryColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "Password",
                hintText: "Enter your password",
                // If  you are using latest version of flutter then lable text and hint text shown like this
                // if you r using flutter less then 1.20.* then maybe this is not working properly
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                suffixIcon:
                const CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                const Text("Remember me"),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, ""),
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                height: 48,
                child: Visibility(
                  visible: _isLoginProgress == false,
                  replacement: Center(child: CircularProgressIndicator()),
                  child: ElevatedButton(
                    onPressed: () {

                      if(_formKey.currentState!.validate()){
                        _signIn();
                      }
                      // controller.userLogin(
                      //     emailController.text.toString().removeAllWhitespace,
                      //     passController.text.toString().removeAllWhitespace);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)), // <-- Radius
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )),

          ],
        ),
      ),
    );
  }

  Future<void> _signIn() async{
    _isLoginProgress = true;
    setState(() {});
    Map<String, dynamic> inputParams = {
      "email" : emailController.text.trim(),
      "password" : passController.text,
    };
    final ResponseObject response = await NetworkCaller.postRequest(Urls.login, inputParams, formSignIn: true);
    _isLoginProgress = false;
    setState(() {});
    if (response.isSuccess) {
      if (!mounted) {
        return;
      }
      LoginModel loginModel = LoginModel.fromJson(response.responseBody);
      if(mounted){
        //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen(),), (route) => false);
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> CustomHomeScreen(),), (route) => false);
      }
    } else {
      if(mounted){
        showSnackBarMessageWidget(context, response.errorMessage ?? 'Login Failed! Try Again');
      }
    }
  }
}

void showSnackBarMessageWidget(BuildContext context, String message,
    [bool isErrorMessage = false]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: isErrorMessage ? Colors.red : null,
    ),
  );
}

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 16, 16),
      child: SizedBox(
        child: Icon(Icons.account_balance_rounded),
      ),
    );
  }
}
