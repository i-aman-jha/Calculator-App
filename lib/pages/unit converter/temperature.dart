import 'package:calculator/utilities/converter/temperatureconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {


  Temperature({super.key});

  final Map<String, String> items={
    'Celcius (\u2103)':'\u2103',
    'Fahrenheit (\u2109)':'\u2109',
    'Kelvin (K)':'K',
  };

  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Temperature', items: items, convert: converttemperature,);
  }
}