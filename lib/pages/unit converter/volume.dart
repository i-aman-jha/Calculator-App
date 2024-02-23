import 'package:calculator/utilities/converter/volumeconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Volume extends StatelessWidget {


  Volume({super.key});
  final Map<String, String> items={
  'Cubic Meter (m\u00B3)':'m\u00B3',
  'Cubic Centimeter (cm\u00B3)':'cm\u00B3',
  'Cubic Decimeter(dm\u00B3)':'dm\u00B3',
  'Cubic Millimeter (mm\u00B3)':'mm\u00B3',
  'Liter (l)':'l',
  'Mililitre (ml)':'ml',
  'Decilitre (dl)':'dl',
  'Centilitre (cl)':'cl',
  'Cubic Feet (ft\u00B3)':'ft\u00B3',
  'US Gallons (gal)':'gal',
  'Cubic Inch (in\u00B3)':'in\u00B3',
  };

  @override
  Widget build(BuildContext context) {
    return ConverterInterface(title: "Volume", items: items, convert: convertvolume);
  }
}