import 'package:calculator/utilities/converter/numeral%20system/numeralconverion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class numeralSystem extends StatelessWidget {


  numeralSystem({super.key});

  final Map<String, String> items={
    'Decimal':'DEC',
    'Binary':'BIN',
    'Octal':'OCT',
    'Hexadecimal':'HEX',
  };

  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Numeral System', items: items, convert: convertnumeral,);
  }
}