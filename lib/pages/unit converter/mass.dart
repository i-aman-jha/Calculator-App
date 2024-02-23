import 'package:calculator/utilities/converter/massconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Mass extends StatelessWidget {
  final Map<String, String> items={
    'Kilogram (Kg)':'kg',
    'Gram (g)':'g',
    'Milligram (mg)':'mg',
    'Tons':'ton',
    'Pound (lb)':'lb',
    'Carat (ct)':'ct',
    'Quintal (q)':'q',
    'Stone (st)':'st',
    'Microgram (µg)':'µg',
  };
  Mass({super.key});

  @override
  Widget build(BuildContext context) {
    return ConverterInterface(title: 'Mass', items: items, convert: convertmass,);
  }
}