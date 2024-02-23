import 'package:calculator/utilities/converter/areaconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Area extends StatelessWidget {
  final Map<String, String> items={
    'Sq. Meter (m\u00B2)':'m\u00B2',
    'Sq. KiloMeter (km\u00B2)':'km\u00B2',
    'Sq. Centimeter (cm\u00B2)':'cm\u00B2',
    'Sq. Feet (ft\u00B2)':'ft\u00B2',
    'Sq. Inch (in\u00B2)':'in\u00B2',
    'Sq. Decimeter (dm\u00B2)':'dm\u00B2',
    'Sq. Millimeter (mm\u00B2)':'mm\u00B2',
    'Sq. Yard (yd\u00B2)':'yd\u00B2',
    'Acre (ac)':'ac',
    'Hectare (ha)':'ha'
    };


  Area({super.key});

  @override
  Widget build(BuildContext context) {
    return ConverterInterface(title: "Area", items: items, convert: convertarea,);
  }
}