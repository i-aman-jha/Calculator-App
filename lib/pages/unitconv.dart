import 'package:calculator/pages/unit%20converter/area.dart';
import 'package:calculator/pages/unit%20converter/bmi.dart';
import 'package:calculator/pages/unit%20converter/currency.dart';
import 'package:calculator/pages/unit%20converter/length.dart';
import 'package:calculator/pages/unit%20converter/mass.dart';
import 'package:calculator/pages/unit%20converter/numeralsystem.dart';
import 'package:calculator/pages/unit%20converter/speed.dart';
import 'package:calculator/pages/unit%20converter/temperature.dart';
import 'package:calculator/pages/unit%20converter/time.dart';
import 'package:calculator/pages/unit%20converter/volume.dart';
import 'package:calculator/utilities/converter/convertertile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnitConverter extends StatelessWidget {
  const UnitConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,width: MediaQuery.of(context).size.width,),
          Column(
            children: [
              Row(children: [
                ConverterTile(
                  text: "Length",
                  icon: Icons.straighten,
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Length()));
                  }
                ),  
                ConverterTile(
                  text: "Area",
                  icon: Icons.aspect_ratio,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Area()));
                  },
                  ),  
                ConverterTile(
                  text: "Volume",
                  icon: Icons.view_in_ar,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Volume()));
                  },
                  ),  
              ],),
              Row(children: [
                ConverterTile(
                  text: "Mass",
                  icon: FontAwesomeIcons.weightHanging,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Mass()));
                  },
                  ),  
                ConverterTile(
                  text: "Temperature",
                  icon: Icons.thermostat,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Temperature()));
                  },
                  ),  
                ConverterTile(
                  text: "Time", 
                  icon: Icons.schedule,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Time()));
                  },
                  ),  
                
              ],),
              Row(children: [
                ConverterTile(
                  text: "Speed",
                  icon: Icons.speed,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Speed()));
                  },
                  ),
                ConverterTile(
                  text: "Numeral System", 
                  icon: Icons.change_circle_outlined,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => numeralSystem()));
                  },
                  ),  
                ConverterTile(
                  text: "Currency", 
                  icon: Icons.currency_exchange,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => currency()));
                  },
                  ),  
              ],),
              Row(children: [
                ConverterTile(
                  text: "BMI",
                  icon: FontAwesomeIcons.weightScale,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BMI()));
                  },
                  ),
              ],),
            ],
          ),
        ],
      ),
    );
  }
}