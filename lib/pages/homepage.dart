import 'package:calculator/utilities/button.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String input = "";
  String output = "";

  void onTap(String text){
    setState(() {
      if(text=='AC'){
        input='';
        output='';
      }
      else if(text=='⌫'){
        if(input.isNotEmpty) {
          input=input.substring(0,input.length-1);
          if(input[input.length-1]!='+' && input[input.length-1]!='×' && input[input.length-1]!='÷' &&input[input.length-1]!='-' ){
            var userInput = input.substring(0,input.length-1);
            userInput=userInput.replaceAll('×', '*');
            userInput=userInput.replaceAll('÷', '/');
            output = "${userInput.interpret()}";
            }
            else{
              var userInput = input;
              userInput=userInput.replaceAll('×', '*');
              userInput=userInput.replaceAll('÷', '/');
              output = "${userInput.interpret()}";
            }
        }
      }
      else if(text=='00'){
        if(input!='0' && input.isNotEmpty){
          input+=text;
          var userInput = input;
          userInput=userInput.replaceAll('×', '*');
          userInput=userInput.replaceAll('÷', '/');
          output = "${userInput.interpret()}";
        }
      }
      else if(text=='×' || text =='÷' || text=='+' || text=='-'){
        if(input!='0' && input.isNotEmpty){
          if(input[input.length-1]!='+' && input[input.length-1]!='×' && input[input.length-1]!='÷' &&input[input.length-1]!='-' ){
            input+=text;
          }
          else{
            if(input[input.length-1]!=text && input.length!=1){
              input=input.substring(0,input.length-1);
              input+=text;
            }
          }
        }
        else{
          if(text=='-'){
            input=text;
          }
        }
      }
      else{
        if(input=='0' || input.isEmpty) {
          input=text;
        } else{
          input+=text;
          var userInput = input;
          userInput=userInput.replaceAll('×', '*');
          userInput=userInput.replaceAll('÷', '/');
          output = "${userInput.interpret()}";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.045),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  input,
                  style: TextStyle(fontSize: (input.length < 36) ? MediaQuery.of(context).size.height * 0.07 : MediaQuery.of(context).size.height * 0.05),
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  output,
                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, color: Colors.black.withOpacity(0.6)),
                  maxLines: 1,
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
                      onPressed: () {onTap("AC");},
                    ),
                    Mbutton(
                      text: "7",
                      operator: false,
                      onPressed: () {onTap("7");},
                    ),
                    Mbutton(
                      text: "4",
                      operator: false,
                      onPressed: () {onTap("4");},
                    ),
                    Mbutton(
                      text: "1",
                      operator: false,
                      onPressed: () {onTap("1");},
                    ),
                    Mbutton(
                      text: "00",
                      operator: false,
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
                    Mbutton(
                      text: "8",
                      operator: false,
                      onPressed: () {onTap("8");},
                    ),
                    Mbutton(
                      text: "5",
                      operator: false,
                      onPressed: () {onTap("5");},
                    ),
                    Mbutton(
                      text: "2",
                      operator: false,
                      onPressed: () {onTap("2");},
                    ),
                    Mbutton(
                      text: "0",
                      operator: false,
                      onPressed: () {onTap("0");},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "÷",
                      operator: true,
                      onPressed: () {onTap("÷");},
                    ),
                    Mbutton(
                      text: "9",
                      operator: false,
                      onPressed: () {onTap("9");},
                    ),
                    Mbutton(
                      text: "6",
                      operator: false,
                      onPressed: () {onTap("6");},
                    ),
                    Mbutton(
                      text: "3",
                      operator: false,
                      onPressed: () {onTap("3");},
                    ),
                    Mbutton(
                      text: ".",
                      operator: false,
                      onPressed: () {onTap(".");},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Mbutton(
                      text: "×",
                      operator: true,
                      onPressed: () {onTap("×");},
                    ),
                    Mbutton(
                      text: "-",
                      operator: true,
                      onPressed: () {onTap("-");},
                    ),
                    Mbutton(
                      text: "+",
                      operator: true,
                      onPressed: () {onTap("+");}
                    ),
                    Specialbutton(
                      text: "=",
                      width: MediaQuery.of(context).size.width * 0.21,
                      height: MediaQuery.of(context).size.width * 0.41,
                      color: const Color.fromARGB(255, 255, 162, 0),
                      onPressed: () {
                        setState(() {
                          if(input.isNotEmpty){
                          var userInput = input;
                          userInput=userInput.replaceAll('×', '*');
                          userInput=userInput.replaceAll('÷', '/');
                          String temp = userInput.substring(userInput.length - 1, userInput.length);
                          ((temp == '+' || temp == '-' || temp == '×' || temp == '÷'))
                              ? output = "Error!"
                              : output = "${userInput.interpret()}";
                          }
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