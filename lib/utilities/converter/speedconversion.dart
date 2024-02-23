import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/speed.dart';

void convertspeed(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Meter Per Second (m/s)":
        switch (selectedUnit2) {
          case "Meter Per Second (m/s)":
            res=inputValue;
            break;
          case "Kilometer Per Hour (km/h)":
            res=inputValue.convertFromTo(SPEED.metersPerSecond, SPEED.kilometersPerHour)!;
            break;
          case "Mile per Hour (mph)":
            res=inputValue.convertFromTo(SPEED.metersPerSecond, SPEED.milesPerHour)!;
            break;
          case "Feet per Second (ft/s)":
            res=inputValue.convertFromTo(SPEED.metersPerSecond, SPEED.feetsPerSecond)!;
            break;
          case "Knot (knot)":
            res=inputValue.convertFromTo(SPEED.metersPerSecond, SPEED.knots)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Kilometer Per Hour (km/h)":
        switch (selectedUnit2) {
          case "Meter Per Second (m/s)":
            res=inputValue.convertFromTo(SPEED.kilometersPerHour, SPEED.metersPerSecond)!;
            break;
          case "Kilometer Per Hour (km/h)":
            res=inputValue;
            break;
          case "Mile per Hour (mph)":
            res=inputValue.convertFromTo(SPEED.kilometersPerHour, SPEED.milesPerHour)!;
            break;
          case "Feet per Second (ft/s)":
            res=inputValue.convertFromTo(SPEED.kilometersPerHour, SPEED.feetsPerSecond)!;
            break;
          case "Knot (knot)":
            res=inputValue.convertFromTo(SPEED.kilometersPerHour, SPEED.knots)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Feet per Second (ft/s)":
        switch (selectedUnit2) {
          case "Meter Per Second (m/s)":
            res=inputValue.convertFromTo(SPEED.feetsPerSecond, SPEED.metersPerSecond)!;
            break;
          case "Kilometer Per Hour (km/h)":
            res=inputValue.convertFromTo(SPEED.feetsPerSecond, SPEED.kilometersPerHour)!;
            break;
          case "Mile per Hour (mph)":
            res=inputValue.convertFromTo(SPEED.feetsPerSecond, SPEED.milesPerHour)!;
            break;
          case "Feet per Second (ft/s)":
            res=inputValue;
            break;
          case "Knot (knot)":
            res=inputValue.convertFromTo(SPEED.feetsPerSecond, SPEED.knots)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Knot (knot)":
        switch (selectedUnit2) {
          case "Meter Per Second (m/s)":
            res=inputValue.convertFromTo(SPEED.knots, SPEED.metersPerSecond)!;
            break;
          case "Kilometer Per Hour (km/h)":
            res=inputValue.convertFromTo(SPEED.knots, SPEED.kilometersPerHour)!;
            break;
          case "Mile per Hour (mph)":
            res=inputValue.convertFromTo(SPEED.knots, SPEED.milesPerHour)!;
            break;
          case "Feet per Second (ft/s)":
            res=inputValue.convertFromTo(SPEED.knots, SPEED.feetsPerSecond)!;
            break;
          case "Knot (knot)":
            res=inputValue;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Mile per Hour (mph)":
        switch (selectedUnit2) {
          case "Meter Per Second (m/s)":
            res=inputValue.convertFromTo(SPEED.milesPerHour, SPEED.metersPerSecond)!;
            break;
          case "Kilometer Per Hour (km/h)":
            res=inputValue.convertFromTo(SPEED.milesPerHour, SPEED.kilometersPerHour)!;
            break;
          case "Mile per Hour (mph)":
            res=inputValue;
            break;
          case "Feet per Second (ft/s)":
            res=inputValue.convertFromTo(SPEED.milesPerHour, SPEED.feetsPerSecond)!;
            break;
          case "Knot (knot)":
            res=inputValue.convertFromTo(SPEED.milesPerHour, SPEED.knots)!;
            break;
          default:
            res=inputValue;
        }
        break;
      
    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }