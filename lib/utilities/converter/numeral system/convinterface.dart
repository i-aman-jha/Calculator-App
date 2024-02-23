import 'package:calculator/utilities/converter/numeral%20system/numeralkeypad.dart';
import 'package:calculator/utilities/dropdown.dart';
import 'package:flutter/material.dart';

class ConvInterface extends StatefulWidget {
  final String title;
  final Map<String, String> items;
  final Function convert;

  const ConvInterface({super.key,
    required this.title,
    required this.items,
    required this.convert,
  });

  @override
  State<ConvInterface> createState() => _ConverterInterfaceState();
}
class _ConverterInterfaceState extends State<ConvInterface> {
  TextEditingController inputtextFieldController = TextEditingController();
  TextEditingController outputtextFieldController = TextEditingController();
  String input = "";
  String output = "";
  String selectedUnit1 = '';
  String selectedUnit2 = '';

  void onUnitChanged1(String value) {
    setState(() {
      selectedUnit1 = value;

      widget.convert(selectedUnit1,selectedUnit2,input,outputtextFieldController);
    });
  }

  void onUnitChanged2(String value) {
    setState(() {
      selectedUnit2 = value;

      widget.convert(selectedUnit1,selectedUnit2,input,outputtextFieldController);
    });
  }


  void onTap(String text){
    setState(() {
      if(text=='00'){
        if(input!='0' && input.isNotEmpty){
          input+=text;
        }
      }
      else if(text=='AC'){
        input='0';
        output='';
      }
      else if(text=='⌫'){
        if(input.isNotEmpty) {
          input=input.substring(0,input.length-1);
        }
      }
      else{
        if(input=='0' || input.isEmpty) {
          input=text;
        } 
        else{
          input+=text;
        }
      }
      inputtextFieldController.text = input;
      widget.convert(selectedUnit1,selectedUnit2,input,outputtextFieldController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.06,),
            child: Column(
              children: [
                Container(
                  height: 65,
                  margin: const EdgeInsets.only(left:20,right: 20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.items,onUnitChanged: onUnitChanged1,),
                      Expanded(
                        child: TextField(
                          controller: inputtextFieldController,
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(border: InputBorder.none),
                          keyboardType: TextInputType.none,
                          readOnly: true,
                          cursorColor: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                  height: 65,
                  margin: const EdgeInsets.only(left:20,right:20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.items,onUnitChanged: onUnitChanged2,),
                       Expanded(
                        child: Center(
                          child: TextField(
                            controller: outputtextFieldController,
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(border: InputBorder.none),
                            keyboardType: TextInputType.none,
                            readOnly: true,
                            cursorColor: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Expanded(child: SizedBox()),
          NumeralKeypad(onInputChanged: onTap,selectedUnit1: selectedUnit1,)
        ],
      ),
    );
  }
}
