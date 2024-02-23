import 'package:calculator/utilities/converter/currencyconversion.dart';
import 'package:calculator/utilities/converter/converterInterface.dart';
import 'package:flutter/material.dart';

class currency extends StatelessWidget {


  currency({super.key});

  final Map<String, String> items = {
  'Indian Rupee (INR)': 'INR',
  'Euro (EUR)': 'EUR',
  'United States Dollar (USD)': 'USD',
  'British Pound Sterling (GBP)': 'GBP',
  'Japanese Yen (JPY)': 'JPY',
  'Swiss Franc (CHF)': 'CHF',
  'UAE Dirham (AED)': 'AED',
  'Australian Dollar (AUD)': 'AUD',
  'Brazilian Real (BRL)': 'BRL',
  'Canadian Dollar (CAD)': 'CAD',
  'Chinese Yuan (CNY)': 'CNY',
};


  @override
  Widget build(BuildContext context){
    return ConverterInterface(title: 'Currency', items: items, convert: convertcurrency,);
  }
}