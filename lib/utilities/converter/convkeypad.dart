import 'package:flutter/material.dart';
import 'package:calculator/utilities/button.dart';

class Keypad extends StatelessWidget {
  final Function(String) onInputChanged;
  final bool bmi;

  const Keypad({Key? key, 
    required this.onInputChanged,
    required this.bmi,
    }) : super(key: key);

  void onTap(String text) {
    // Call the callback function to notify the parent widget
    onInputChanged(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Mbutton(
                text: "7",
                operator: false,
                onPressed: () {
                  onTap("7");
                },
              ),
              Mbutton(
                text: "4",
                operator: false,
                onPressed: () {
                  onTap("4");
                },
              ),
              Mbutton(
                text: "1",
                operator: false,
                onPressed: () {
                  onTap("1");
                },
              ),
              Mbutton(
                text: "00",
                operator: false,
                onPressed: () {
                  onTap("00");
                },
              ),
            ],
          ),
          Column(
            children: [
              Mbutton(
                text: "8",
                operator: false,
                onPressed: () {
                  onTap("8");
                },
              ),
              Mbutton(
                text: "5",
                operator: false,
                onPressed: () {
                  onTap("5");
                },
              ),
              Mbutton(
                text: "2",
                operator: false,
                onPressed: () {
                  onTap("2");
                },
              ),
              Mbutton(
                text: "0",
                operator: false,
                onPressed: () {
                  onTap("0");
                },
              ),
            ],
          ),
          Column(
            children: [
              Mbutton(
                text: "9",
                operator: false,
                onPressed: () {
                  onTap("9");
                },
              ),
              Mbutton(
                text: "6",
                operator: false,
                onPressed: () {
                  onTap("6");
                },
              ),
              Mbutton(
                text: "3",
                operator: false,
                onPressed: () {
                  onTap("3");
                },
              ),
              Mbutton(
                text: ".",
                operator: false,
                onPressed: () {
                  onTap(".");
                },
              ),
            ],
          ),
          Column(
            children: [
              Specialbutton(
                text: "AC",
                width: MediaQuery.of(context).size.width * 0.21,
                height: (bmi)?MediaQuery.of(context).size.width*0.28:MediaQuery.of(context).size.width * 0.41,
                color: Colors.blueAccent,
                onPressed: () {
                  // Clear input
                  onInputChanged("AC");
                },
              ),
              Specialbutton(
                text: "⌫",
                width: MediaQuery.of(context).size.width * 0.21,
                height: (bmi)?MediaQuery.of(context).size.width*0.28:MediaQuery.of(context).size.width * 0.41,
                color: Colors.blueAccent,
                onPressed: () {
                  // Remove last character
                  onInputChanged("⌫");
                },
              ),
              if(bmi)...[
                Specialbutton(
                text: "GO",
                width: MediaQuery.of(context).size.width * 0.21,
                height: (bmi)?MediaQuery.of(context).size.width*0.28:MediaQuery.of(context).size.width * 0.41,
                color: const Color.fromARGB(255, 255, 162, 0),
                onPressed: () {
                  onInputChanged("GO");
                },
              ),
            ]
            ],
          )
        ],
      ),
    );
  }
}
