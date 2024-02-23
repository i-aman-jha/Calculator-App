import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:calculator/utilities/converter/speedconversion.dart';
import 'package:flutter/material.dart';

class Speed extends StatelessWidget {

  Speed({super.key});

  final Map<String, String> items={
    'Meter Per Second (m/s)':'m/s',
    'Kilometer Per Hour (km/h)':'km/h',
    'Mile per Hour (mph)':'mph',
    'Feet per Second (ft/s)':'ft/s',
    'Knot (knot)':'knot',
  };

  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Speed', items: items, convert: convertspeed,);
  }
}