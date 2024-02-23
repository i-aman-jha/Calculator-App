import 'package:calculator/utilities/converter/lengthconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Length extends StatelessWidget {


  Length({super.key});

  final Map<String, String> items={
    "Meter (m)":"m",
    "Centimeter (cm)":"cm",
    "Kilometer (km)":"km",
    "Mile (mi)":"mi",
    "Yard (yd)":"yd",
    "Feet (ft)": "ft",
    "Inch (in)": "in",
    "Decimeter (dm)":"dm",
    "Millimeter (mm)":"mm",
    "Nanometer (nm)":"nm",
    "Picometer (pm)":"pm"
  };

  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Length', items: items, convert: convertlength,);
  }
}