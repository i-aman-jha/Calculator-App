import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/temperature.dart';


void converttemperature(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Celcius (\u2103)":
        switch (selectedUnit2) {
          case "Celcius (\u2103)":
            res=inputValue;
            break;
          case "Fahrenheit (\u2109)":
            res=inputValue.convertFromTo(TEMPERATURE.celsius, TEMPERATURE.fahrenheit)!;
            break;
          case "Kelvin (K)":
            res=inputValue.convertFromTo(TEMPERATURE.celsius, TEMPERATURE.kelvin)!;
            break;
                    default:
            res=inputValue;
        }
        break;

      case "Fahrenheit (\u2109)":
        switch (selectedUnit2) {
          case "Celcius (\u2103)":
            res=inputValue.convertFromTo(TEMPERATURE.fahrenheit, TEMPERATURE.celsius)!;
            break;
          case "Fahrenheit (\u2109)":
            res=inputValue;
            break;
          case "Kelvin (K)":
            res=inputValue.convertFromTo(TEMPERATURE.fahrenheit, TEMPERATURE.kelvin)!;
            break;
                    default:
            res=inputValue;
        }
        break;

      case "Kelvin (K)":
        switch (selectedUnit2) {
          case "Celcius (\u2103)":
            res=inputValue.convertFromTo(TEMPERATURE.kelvin, TEMPERATURE.celsius)!;
            break;
          case "Fahrenheit (\u2109)":
            res=inputValue.convertFromTo(TEMPERATURE.kelvin, TEMPERATURE.fahrenheit)!;
            break;
          case "Kelvin (K)":
            res=inputValue;
            break;
                    default:
            res=inputValue;
        }
        break;


    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }