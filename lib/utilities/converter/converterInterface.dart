import 'package:calculator/utilities/dropdown.dart';
import 'package:calculator/utilities/converter/convkeypad.dart';
import 'package:flutter/material.dart';

class ConverterInterface extends StatefulWidget {
  final String title;
  final Map<String, String> items;
  final Function convert;

  const ConverterInterface({super.key,
    required this.title,
    required this.items,
    required this.convert,
  });

  @override
  State<ConverterInterface> createState() => _ConverterInterfaceState();
}
class _ConverterInterfaceState extends State<ConverterInterface> {
  TextEditingController inputtextFieldController = TextEditingController();
  TextEditingController outputtextFieldController = TextEditingController();
  String input = "0";
  String output = "0";
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
                  // height: 65,
                  margin: const EdgeInsets.only(left:20,right: 20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.items,onUnitChanged: onUnitChanged1,),
                      Expanded(
                        child: Column(
                          children: [
                            TextField(
                              controller: inputtextFieldController,
                              textAlign: TextAlign.end,
                              style: TextStyle(fontSize: 25),
                              decoration: InputDecoration(border: InputBorder.none),
                              keyboardType: TextInputType.none,
                              readOnly: true,
                              cursorColor: Colors.blueAccent,
                            ),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                 Text(selectedUnit1,
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Container(
                  // height: 65,
                  margin: const EdgeInsets.only(left:20,right:20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.items,onUnitChanged: onUnitChanged2,),
                       Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              TextField(
                                controller: outputtextFieldController,
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(border: InputBorder.none),
                                keyboardType: TextInputType.none,
                                readOnly: true,
                                cursorColor: Colors.blueAccent,
                              ),
                              Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                 Text(selectedUnit2,
                                  style: TextStyle(fontSize: 15),
                                  textAlign: TextAlign.right,
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
              ],
            ),
          ),

          const Expanded(child: SizedBox()),
          Keypad(onInputChanged: onTap,bmi: false,)
        ],
      ),
    );
  }
}
