import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String input = "0";
  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.045),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            color: const Color.fromARGB(255, 234, 234, 234),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  input,
                  style: TextStyle(fontSize: (input.length <= 36) ? MediaQuery.of(context).size.height * 0.07 : MediaQuery.of(context).size.height * 0.05),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  output,
                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, color: Colors.black.withOpacity(0.6)),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Mbutton(
                      text: "AC",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          input = '0';
                          output = '0';
                        });
                      },
                    ),
                    Mbutton(
                      text: "7",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '7';
                        });
                      },
                    ),
                    Mbutton(
                      text: "4",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '4';
                        });
                      },
                    ),
                    Mbutton(
                      text: "1",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '1';
                        });
                      },
                    ),
                    Mbutton(
                      text: "00",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '00';
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "⌫",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          if (input.isNotEmpty) {
                            input = input.substring(0, input.length - 1);
                          }
                        });
                      },
                    ),
                    Mbutton(
                      text: "8",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '8';
                        });
                      },
                    ),
                    Mbutton(
                      text: "5",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '5';
                        });
                      },
                    ),
                    Mbutton(
                      text: "2",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '2';
                        });
                      },
                    ),
                    Mbutton(
                      text: "0",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '0';
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "÷",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          input += '/';
                        });
                      },
                    ),
                    Mbutton(
                      text: "9",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '9';
                        });
                      },
                    ),
                    Mbutton(
                      text: "6",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '6';
                        });
                      },
                    ),
                    Mbutton(
                      text: "3",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '3';
                        });
                      },
                    ),
                    Mbutton(
                      text: ".",
                      operator: false,
                      onPressed: () {
                        setState(() {
                          input += '.';
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "×",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          input += '*';
                        });
                      },
                    ),
                    Mbutton(
                      text: "-",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          input += '-';
                        });
                      },
                    ),
                    Mbutton(
                      text: "+",
                      operator: true,
                      onPressed: () {
                        setState(() {
                          input += '+';
                        });
                      },
                    ),
                    Specialbutton(
                      text: "=",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.41,
                      color: const Color.fromARGB(255, 255, 162, 0),
                      onPressed: () {
                        setState(() {
                          var userInput = input;
                          String temp = userInput.substring(userInput.length - 1, userInput.length);
                          ((temp == '+' || temp == '-' || temp == '×' || temp == '÷'))
                              ? output = "Error!"
                              : output = "${userInput.interpret()}";
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Mbutton extends StatelessWidget {
  final String text;
  final bool operator;
  final VoidCallback? onPressed;

  const Mbutton({
    Key? key,
    required this.text,
    required this.operator,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: operator ? Colors.blueAccent : Colors.white,
          shape: const CircleBorder(),
          fixedSize: Size(MediaQuery.of(context).size.width * 0.21, MediaQuery.of(context).size.width * 0.21),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: MediaQuery.of(context).size.width * 0.07,
          ),
        ),
      ),
    );
  }
}

class Specialbutton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final VoidCallback? onPressed;

  const Specialbutton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          fixedSize: Size(width, height),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: MediaQuery.of(context).size.width * 0.07),
        ),
      ),
    );
  }
}
