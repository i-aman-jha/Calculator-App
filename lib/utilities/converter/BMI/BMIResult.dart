import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final String bmi;
  final String bmicategory;

  const BMIResult({super.key,
    required this.bmi,
    required this.bmicategory,
  });

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height*0.4,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.2)
            ),

            child: Column(
              children: [
                const Text(
                  "BMI",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500
                  ),
                  ),

                Text(
                  bmi,
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 214, 131, 7)
                  ),
                ),

                Text(
                  bmicategory,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color:(bmicategory=='Underweight' || bmicategory=='Severely Underweight')?
                      Colors.blueAccent:(bmicategory=='Normal')?
                        const Color.fromARGB(255, 50, 151, 54):Colors.red,
                  ),
                ),


                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 4,
                  width: MediaQuery.of(context).size.width*0.80,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Information",
                      style: TextStyle(
                        fontSize: 20
                      ),
                      ),
                ],),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(children: [
                    const Text(
                      "Underweight",
                      style: TextStyle(
                        color: Colors.blueAccent
                      ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 3,
                      width: MediaQuery.of(context).size.width*0.25,
                      color: Colors.blueAccent,
                    ),
                  ],),
                  Column(children: [
                    const Text(
                      "Normal",
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 151, 54),
                      ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 3,
                      width: MediaQuery.of(context).size.width*0.25,
                      color: Colors.green,
                    )
                  ],),
                  Column(children: [
                    const Text(
                      "Overweight",
                      style: TextStyle(
                        color: Colors.red
                      ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 3,
                      width: MediaQuery.of(context).size.width*0.25,
                      color: Colors.red,
                    )
                  ],)
                ],),
                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                  const Text("16.0"),
                  const Expanded(child: SizedBox()),
                  const Text("18.5"),
                  const Expanded(child: SizedBox()),
                  const Text("25.0"),
                  const Expanded(child: SizedBox()),
                  const Text("40.0"),
                  SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                ],)
              ],
            )
          ),
        ),
      ),
    );
  }
}