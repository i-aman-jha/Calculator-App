import 'package:calculator/utilities/calculatorkeypad.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class StandardCalc extends StatefulWidget {
  const StandardCalc({Key? key}) : super(key: key);

  @override
  State<StandardCalc> createState() => _HomepageState();
}

class _HomepageState extends State<StandardCalc> {
  String input = "";
  String output = "";

  void onTap(String text){
    setState(() {
      if(text=='AC'){
        input='';
        output='';
      }
      else if(text=='⌫'){
        if(input.length==1){
          input='';
          output='';
        }
        else if(input.isNotEmpty) {
          input=input.substring(0,input.length-1);
          
          if(input[input.length-1]=='+' || input[input.length-1]=='-' || input[input.length-1]=='×' || input[input.length-1]=='÷'){
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
      else if(text=='='){
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
    return Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.045),
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
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
          ),
          CalcKeypad(onInputChanged: onTap),
        ],
    );
  }
}