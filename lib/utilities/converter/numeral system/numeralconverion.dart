import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/numeral_systems.dart';


void convertnumeral(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    String inputValue = input;

    String res="";
    switch(selectedUnit1){
      case "Decimal (DEC)":
        switch(selectedUnit2){
          case "Decimal (DEC)":
            res=inputValue;
            break;
          case "Binary (BIN)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.binary)!;
            break;
          case "Octal (OCT)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.octal)!;
            break;
          case "Hexadecimal (HEX)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.decimal, NUMERAL_SYSTEMS.hexadecimal)!;
            break;
        }
        break;

      case "Binary (BIN)":
        switch(selectedUnit2){
          case "Decimal (DEC)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.binary, NUMERAL_SYSTEMS.decimal)!;
            break;
          case "Binary (BIN)":
            res=inputValue;
            break;
          case "Octal (OCT)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.binary, NUMERAL_SYSTEMS.octal)!;
            break;
          case "Hexadecimal (HEX)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.binary, NUMERAL_SYSTEMS.hexadecimal)!;
            break;
        }
        break;

      case "Octal (OCT)":
        switch(selectedUnit2){
          case "Decimal (DEC)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.octal, NUMERAL_SYSTEMS.decimal)!;
            break;
          case "Binary (BIN)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.octal, NUMERAL_SYSTEMS.binary)!;
            break;
          case "Octal (OCT)":
            res=inputValue;
            break;
          case "Hexadecimal (HEX)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.octal, NUMERAL_SYSTEMS.hexadecimal)!;
            break;
        }
        break;

      case "Hexadecimal (HEX)":
        switch(selectedUnit2){
          case "Decimal (DEC)":
            res=inputValue.convertFromTo(NUMERAL_SYSTEMS.hexadecimal, NUMERAL_SYSTEMS.decimal)!;
            break;
          case "Binary (BIN)":
            res=inputValue;res=inputValue.convertFromTo(NUMERAL_SYSTEMS.hexadecimal, NUMERAL_SYSTEMS.binary)!;
            break;
          case "Octal (OCT)":
            res=inputValue;res=inputValue.convertFromTo(NUMERAL_SYSTEMS.hexadecimal, NUMERAL_SYSTEMS.octal)!;
            break;
          case "Hexadecimal (HEX)":
            res=inputValue;
            break;
        }
        break;
    }
    String outputValue=res;
    outputtextFieldController.text = outputValue.toString();
}