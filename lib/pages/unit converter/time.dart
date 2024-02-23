import 'package:calculator/utilities/converter/timeconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class Time extends StatelessWidget {


  Time({super.key});

  final Map<String, String> items={
    'Year (Y)':'Y',   
    'Week (wk)':'wk',   
    'Day (d)':'d',   
    'Hour (h)':'h',   
    'Minute (min)':'min',   
    'Second (s)':'s',   
    'Millisecond (ms)':'s',
    'Microsecond (µs)':'µs'
  };

  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Time', items: items, convert: converttime,);
  }
}