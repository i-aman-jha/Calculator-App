import 'package:calculator/utilities/converter/numeral%20system/convinterface.dart';
import 'package:calculator/utilities/converter/numeral%20system/numeralconverion.dart';
import 'package:flutter/material.dart';

class numeralSystem extends StatelessWidget {
  

  numeralSystem({super.key,});

  final Map<String, String> items={
    'Decimal (DEC)':'DEC',
    'Binary (BIN)':'BIN',
    'Octal (OCT)':'OCT',
    'Hexadecimal (HEX)':'HEX',
  };

  @override
  Widget build(BuildContext context){

    return ConvInterface(title: 'Numeral System', items: items, convert: convertnumeral,);
  }
}