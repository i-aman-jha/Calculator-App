import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/area.dart';

void convertarea(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Sq. Meter (m\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareMeters, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Centimeter (cm\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareCentimeters, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. KiloMeter (km\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareKilometers, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Yard (yd\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareYard, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Feet (ft\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareFeet, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Inch (in\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareInches, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Millimeter (mm\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue;
            break;
          case "Hectare (ha)":
            res=inputValue.convertFromTo(AREA.squareMillimeters, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Hectare (ha)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareMeters)!;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareMeters)!*100;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=inputValue.convertFromTo(AREA.hectares, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=inputValue;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Sq. Decimeter (dm\u00B2)":
        switch (selectedUnit2) {
          case "Sq. Meter (m\u00B2)":
            res=inputValue/10;
            break;
          case "Sq. Centimeter (cm\u00B2)":
            // res=inputValue*10;
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareCentimeters)!;
            break;
          case "Sq. KiloMeter (km\u00B2)":
            // res=inputValue*100;
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareKilometers)!;
            break;
          case "Acre (ac)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.acres)!;
            break;
          case "Sq. Yard (yd\u00B2)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareYard)!;
            break;
          case "Sq. Feet (ft\u00B2)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareFeet)!;
            break;
          case "Sq. Inch (in\u00B2)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareInches)!;
            break;
          case "Sq. Decimeter (dm\u00B2)":
            res=inputValue;
            break;
          case "Sq. Millimeter (mm\u00B2)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.squareMillimeters)!;
            break;
          case "Hectare (ha)":
            res=(inputValue/10).convertFromTo(AREA.squareMeters, AREA.hectares)!;
            break;
          default:
            res=inputValue;
        }
        break;

    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }