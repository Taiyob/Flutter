import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../components/myButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ButtonWidget(
                            title: 'AC',
                            onPress: () {
                              userInput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '+/-',
                            onPress: () {
                              userInput = userInput + '+/-';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '%',
                            onPress: () {
                              userInput = userInput + '%';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '/',
                            color: Color(0xffffa00a),
                            onPress: () {
                              userInput = userInput + '/';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ButtonWidget(
                            title: '7',
                            onPress: () {
                              userInput = userInput + '7';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '8',
                            onPress: () {
                              userInput = userInput + '8';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '0',
                            onPress: () {
                              userInput = userInput + '0';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: 'X',
                            color: Color(0xffffa00a),
                            onPress: () {
                              userInput = userInput + 'X';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ButtonWidget(
                            title: '4',
                            onPress: () {
                              userInput = userInput + '4';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '5',
                            onPress: () {
                              userInput = userInput + '5';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '6',
                            onPress: () {
                              userInput = userInput + '6';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '-',
                            color: Color(0xffffa00a),
                            onPress: () {
                              userInput = userInput + '-';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ButtonWidget(
                            title: '1',
                            onPress: () {
                              userInput = userInput + '1';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '2',
                            onPress: () {
                              userInput = userInput + '2';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '3',
                            onPress: () {
                              userInput = userInput + '3';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '+',
                            color: Color(0xffffa00a),
                            onPress: () {
                              userInput = userInput + '+';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ButtonWidget(
                            title: '0',
                            onPress: () {
                              userInput = userInput + '0';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '.',
                            onPress: () {
                              userInput = userInput + '.';
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: 'DEL',
                            onPress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            },
                          ),
                          ButtonWidget(
                            title: '=',
                            color: Color(0xffffa00a),
                            onPress: () {
                              equalPress();
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finalUSerInput = userInput;
    finalUSerInput = userInput.replaceAll('X', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUSerInput);
    ContextModel contextModel = ContextModel();
    double equal = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = equal.toString();
  }
}
