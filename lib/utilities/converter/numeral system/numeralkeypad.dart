import 'package:flutter/material.dart';
import 'package:calculator/utilities/button.dart';

class NumeralKeypad extends StatelessWidget {
  final Function(String) onInputChanged;
  final String selectedUnit1;

  NumeralKeypad({Key? key, 
    required this.onInputChanged,
    required this.selectedUnit1,
    }) : super(key: key);

  void onTap(String text) {
    // Call the callback function to notify the parent widget
    onInputChanged(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Specialbutton(
                      text: "AC",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: Colors.blueAccent,
                      onPressed: () {onTap("AC");},
                    ),
                    Specialbutton(
                      text: "7",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {onTap("7");},
                    ),
                    Specialbutton(
                      text: "4",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)') onTap("4");},
                    ),
                    Specialbutton(
                      text: "1",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {onTap("1");},
                    ),
                    Specialbutton(
                      text: "00",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {onTap("00");},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "⌫",
                      operator: true,
                      onPressed: () {onTap("⌫");},
                    ),
                    Specialbutton(
                      text: "8",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)' || selectedUnit1=='Octal (OCT)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)' || selectedUnit1!='Octal (OCT)') onTap("8");},
                    ),
                    Specialbutton(
                      text: "5",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)') onTap("5");},
                    ),
                    Specialbutton(
                      text: "2",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)') onTap("2");},
                    ),
                    Specialbutton(
                      text: "0",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {onTap("0");},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Specialbutton(
                      text: "F",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("F");}
                    ),
                    Specialbutton(
                      text: "9",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)' || selectedUnit1=='Octal (OCT)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)' || selectedUnit1!='Octal (OCT)') onTap("9");},
                    ),
                    Specialbutton(
                      text: "6",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)') onTap("6");},
                    ),
                    Specialbutton(
                      text: "3",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Binary (BIN)')?const Color.fromARGB(255, 67, 67, 67): Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {if(selectedUnit1!='Binary (BIN)') onTap("3");},
                    ),
                    Specialbutton(
                      text: ".",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {onTap(".");},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Specialbutton(
                      text: "E",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("E");}
                    ),
                    Specialbutton(
                      text: "D",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("D");}
                    ),
                    Specialbutton(
                      text: "C",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("C");}
                    ),
                    Specialbutton(
                      text: "B",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("B");}
                    ),
                    Specialbutton(
                      text: "A",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.21,
                      color: (selectedUnit1=='Hexadecimal (HEX)')? const Color.fromARGB(255, 249, 249, 249):const Color.fromARGB(255, 67, 67, 67),
                      onPressed: () {if(selectedUnit1=='Hexadecimal (HEX)') onTap("A");}
                    ),
                    
                  ],
                )
              ],
            ),
          );
  }
}
