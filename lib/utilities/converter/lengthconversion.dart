import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/length.dart';


void convertlength(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Meter (m)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.meters, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Centimeter (cm)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.centimeters, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Kilometer (km)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.kilometers, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Miles (mi)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.miles, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Yard (yd)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.yards, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Feet (ft)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.feet, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Inch (in)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.inches, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Millimeter (mm)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Nanometer (nm)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue;
            break;
          case "Picometer (pm)":
            res=inputValue.convertFromTo(LENGTH.nanometers, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Picometer (pm)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue.convertFromTo(LENGTH.millimeters, LENGTH.meters)!;
            break;
          case "Centimeter (cm)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.meters)!*10;
            break;
          case "Millimeter (mm)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=inputValue.convertFromTo(LENGTH.picometers, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=inputValue;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Decimeter (dm)":
        switch (selectedUnit2) {
          case "Meter (m)":
            res=inputValue/10;
            break;
          case "Centimeter (cm)":
            // res=inputValue*10;
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.centimeters)!;
            break;
          case "Kilometer (km)":
            // res=inputValue*100;
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.kilometers)!;
            break;
          case "Mile (mi)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.miles)!;
            break;
          case "Yard (yd)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.yards)!;
            break;
          case "Feet (ft)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.feet)!;
            break;
          case "Inch (in)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.inches)!;
            break;
          case "Decimeter (dm)":
            res=inputValue;
            break;
          case "Millimeter (mm)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.millimeters)!;
            break;
          case "Nanometer (nm)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.nanometers)!;
            break;
          case "Picometer (pm)":
            res=(inputValue/10).convertFromTo(LENGTH.meters, LENGTH.picometers)!;
            break;
          default:
            res=inputValue;
        }
        break;

    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }