import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/volume.dart';



void convertvolume(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Cubic Meter (m\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.cubicMeters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Cubic Centimeter (cm\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.cubicCentimeters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Liter (l)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.liters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "US Gallons (gal)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.usGallons, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Cubic Feet (ft\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.cubicFeet, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Cubic Inch (in\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.cubicInches, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Cubic Millimeter (mm\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Decilitre (dl)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue;
            break;
          case "Centilitre (cl)":
            res=inputValue.convertFromTo(VOLUME.deciliters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Centilitre (cl)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue.convertFromTo(VOLUME.cubicMillimeters, VOLUME.cubicMeters)!;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.cubicMeters)!*1000;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=inputValue.convertFromTo(VOLUME.centiliters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=inputValue;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Cubic Decimeter(dm\u00B3)":
        switch (selectedUnit2) {
          case "Cubic Meter (m\u00B3)":
            res=inputValue/10;
            break;
          case "Cubic Centimeter (cm\u00B3)":
            // res=inputValue*10;
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.cubicCentimeters)!;
            break;
          case "Liter (l)":
            // res=inputValue*100;
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.liters)!;
            break;
          case "Millilitre (ml)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.milliliters)!;
            break;
          case "US Gallons (gal)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.usGallons)!;
            break;
          case "Cubic Feet (ft\u00B3)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.cubicFeet)!;
            break;
          case "Cubic Inch (in\u00B3)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.cubicInches)!;
            break;
          case "Cubic Decimeter(dm\u00B3)":
            res=inputValue;
            break;
          case "Cubic Millimeter (mm\u00B3)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.cubicMillimeters)!;
            break;
          case "Decilitre (dl)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.deciliters)!;
            break;
          case "Centilitre (cl)":
            res=(inputValue/10).convertFromTo(VOLUME.cubicMeters, VOLUME.centiliters)!;
            break;
          default:
            res=inputValue;
        }
        break;

    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }