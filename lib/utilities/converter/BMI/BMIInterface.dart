import 'package:calculator/utilities/converter/BMI/BMIResult.dart';
import 'package:calculator/utilities/converter/convkeypad.dart';
import 'package:calculator/utilities/dropdown.dart';
import 'package:flutter/material.dart';

class BMIInterface extends StatefulWidget {
  final String title;
  final Map<String, String> weightitems;
  final Map<String, String> heightitems;
  final Function convert;

  const BMIInterface({super.key,
    required this.title,
    required this.weightitems,
    required this.heightitems,
    required this.convert,
  });

  @override
  State<BMIInterface> createState() => _ConverterInterfaceState();
}
class _ConverterInterfaceState extends State<BMIInterface> {
  TextEditingController weighttextFieldController = TextEditingController();
  TextEditingController heighttextFieldController = TextEditingController();
  TextEditingController bmitextFieldController = TextEditingController();
  String field="";
  String weight = "";
  String height = "";
  String bmiresult="";
  String bmicategory="";
  String selectedUnit1 = '';
  String selectedUnit2 = '';

  void onUnitChanged1(String value) {
    setState(() {
      selectedUnit1 = value;
      widget.convert(selectedUnit1,selectedUnit2,weight,height);
    });
  }

  void onUnitChanged2(String value) {
    setState(() {
      selectedUnit2 = value;
      widget.convert(selectedUnit1,selectedUnit2,weight,height);
    });
  }

  void onTap(String text) {
      // print("object");
    if(text=='GO' && weighttextFieldController.text.isNotEmpty && heighttextFieldController.text.isNotEmpty){
      bmiresult=widget.convert(selectedUnit1,selectedUnit2,weight,height)[0];
      bmicategory=widget.convert(selectedUnit1,selectedUnit2,weight,height)[1];
      print(bmiresult);
      print(bmicategory);
      Navigator.push(context, MaterialPageRoute(builder: (context) => BMIResult(bmi: bmiresult,bmicategory: bmicategory,)));
    }
    else if (field == "weight") {
      // print(weight);
      onTapInput(text);
    } 
    else if (field == "height") {
      onTapOutput(text);
  }
}

  void onTapInput(String text){
    setState(() {
      if(weight.length<=3){
        if(text=='00'){
          if(weight!='0' && weight.isNotEmpty && weight.length==1){
            weight+=text;
          }
        }
        else if(text=='AC' && weight.length<=3){
          weight='';
        }
        else if(text=='⌫' && weight.length<=3){
          if(weight.isNotEmpty) {
            weight=weight.substring(0,weight.length-1);
          }
        }
        else{
          if(weight=='0' || weight.isEmpty) {
            weight=text;
          } 
          else{
            if(weight.length<3) weight+=text;
          }
        }
        weighttextFieldController.text = weight;
      }
    });
  }
  void onTapOutput(String text){
    setState(() {
      if(height.length<=3){
        if(text=='00' && height.length<2){
          if(height!='0' && height.isNotEmpty && height.length==1){
            height+=text;
          }
        }
        else if(text=='AC' && height.length<=3){
          height='';
        }
        else if(text=='⌫' && height.length<=3){
          if(height.isNotEmpty) {
            height=height.substring(0,height.length-1);
          }
        }
        else{
          if(height=='0' || height.isEmpty) {
            height=text;
          } 
          else{
            if(height.length<3) height+=text;
          }
        }
        heighttextFieldController.text = height;
      }
      
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
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.04,),
            child: Column(
              children: [
                Container(
                  // height: 70,
                  margin: const EdgeInsets.only(left:20,right: 20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.weightitems,onUnitChanged: onUnitChanged1,),
                      Expanded(
                        child: Column(
                          children: [
                            TextField(
                              onTap: () {
                                field="weight";
                              },
                              controller: weighttextFieldController,
                              textAlign: TextAlign.end,
                              style: const TextStyle(fontSize: 25),
                              decoration: const InputDecoration(border: InputBorder.none),
                              keyboardType: TextInputType.none,
                              // readOnly: true,
                              cursorColor: Colors.blueAccent,
                            ),
                            const Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                 Text("Weight",
                                  style: TextStyle(fontSize: 17),
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
                  margin: const EdgeInsets.only(left:20,right:20),
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Row(
                    children: [
                      UnitDropdown(items: widget.heightitems,onUnitChanged: onUnitChanged2,),
                       Expanded(
                        child: Column(
                          children: [
                            TextField(
                              onTap: () {
                                field="height";
                              },
                              controller: heighttextFieldController,
                              textAlign: TextAlign.end,
                              style: const TextStyle(fontSize: 25),
                              decoration: const InputDecoration(border: InputBorder.none),
                              keyboardType: TextInputType.none,
                              // readOnly: true,
                              cursorColor: Colors.blueAccent,
                            ),
                            const Row(
                              mainAxisAlignment:MainAxisAlignment.end ,
                              children: [
                                 Text("Height",
                                  style: TextStyle(fontSize: 17),
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
              ],
            ),
          ),

          const Expanded(child: SizedBox()),
          Keypad(onInputChanged: onTap,bmi: true,),
        ],
      ),
    );
  }
}
