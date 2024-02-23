import 'package:calculator/utilities/converter/BMI/BMIConversion.dart';
import 'package:calculator/utilities/converter/BMI/BMIInterface.dart';
import 'package:flutter/material.dart';

class BMI extends StatelessWidget {
  BMI({super.key});

  final Map<String, String> weightitems={
    'Kilogram (kg)':'kg',
    'Pound (lb)':'lb'
  };
  final Map<String, String> heightitems={
    'Centimeter (cm)':'cm',
    'Meter (m)':'m',
    'Feet (ft)':'ft',
    'Inch (in)':'in'
  };

  @override
  Widget build(BuildContext context) {
    return BMIInterface(title: "BMI", weightitems: weightitems, heightitems: heightitems, convert: convertBMI);
  }
}