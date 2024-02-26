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
  bool isEqualPressed = false;

  void onTap(String text){
    setState(() {
      if(text=='AC'){
        input='';
        output='';
        isEqualPressed=false;
      }
      else if(text=='⌫'){
        if(!isEqualPressed){
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
      }
      else if(text=='00'){
        if(input!='0' && input.isNotEmpty && input.length<85 && !isEqualPressed){
          input+=text;
          var userInput = input;
          userInput=userInput.replaceAll('×', '*');
          userInput=userInput.replaceAll('÷', '/');
          output = "${userInput.interpret()}";
        }
      }
      else if(text=='×' || text =='÷' || text=='+' || text=='-'){
        if(input.length<85){
          if(input!='0' && input.isNotEmpty){
            if(input[input.length-1]!='+' && input[input.length-1]!='×' && input[input.length-1]!='÷' &&input[input.length-1]!='-' ){
              (isEqualPressed)?input=output+text:input+=text;
              isEqualPressed=false;
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
      }
      else if(text=='='){
        setState(() {
          if(input.isNotEmpty){
            var userInput = input;
            userInput=userInput.replaceAll('×', '*');
            userInput=userInput.replaceAll('÷', '/');
            String temp = userInput.substring(userInput.length - 1, userInput.length);
            isEqualPressed = true;
            ((temp == '+' || temp == '-' || temp == '*' || temp == '/'))
                ? output = "Error!"
                : output = "${userInput.interpret()}";
          }
        });
      }
      else{
        if(input=='0' || input.isEmpty) {
          input=text;
        } 
        else{
          if(input.length<85){
            (isEqualPressed)?input=text:input+=text;
            isEqualPressed=false;
            var userInput = input;
            userInput=userInput.replaceAll('×', '*');
            userInput=userInput.replaceAll('÷', '/');
            output = "${userInput.interpret()}";
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double inputFontSize = isEqualPressed ? 20.0 : 36.0;
    double outputFontSize = isEqualPressed ? 36.0 : 20.0;

    return Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.045),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    input,
                    style: TextStyle(
                      fontSize: inputFontSize
                      ),
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    output,
                    style: TextStyle(
                      fontSize: outputFontSize
                      ),
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