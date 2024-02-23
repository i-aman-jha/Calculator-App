import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/time.dart';

void converttime(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Year (Y)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue;
            break;
          case "Week (wk)":
            res=inputValue.convertFromTo(TIME.years365, TIME.weeks)!;
            break;
          case "Day (d)":
            res=inputValue.convertFromTo(TIME.years365, TIME.days)!;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.years365, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue.convertFromTo(TIME.years365, TIME.minutes)!;
            break;
          case "Second (s)":
            res=inputValue.convertFromTo(TIME.years365, TIME.seconds)!;
            break;
          case "Millisecond (ms)":
            res=inputValue.convertFromTo(TIME.years365, TIME.milliseconds)!;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.years365, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Week (wk)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.years365)!;
            break;
          case "Week (wk)":
            res=inputValue;
            break;
          case "Day (d)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.days)!;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.minutes)!;
            break;
          case "Second (s)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.seconds)!;
            break;
          case "Millisecond (ms)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.milliseconds)!;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.weeks, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Day (d)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue.convertFromTo(TIME.days, TIME.years365)!;
            break;
          case "Week (wk)":
            res=inputValue.convertFromTo(TIME.days, TIME.weeks)!;
            break;
          case "Day (d)":
            res=inputValue;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.days, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue.convertFromTo(TIME.days, TIME.minutes)!;
            break;
          case "Second (s)":
            res=inputValue.convertFromTo(TIME.days, TIME.seconds)!;
            break;
          case "Millisecond (ms)":
            res=inputValue.convertFromTo(TIME.days, TIME.milliseconds)!;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.days, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Minute (min)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.years365)!;
            break;
          case "Week (wk)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.weeks)!;
            break;
          case "Day (d)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.days)!;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue;
            break;
          case "Second (s)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.seconds)!;
            break;
          case "Millisecond (ms)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.milliseconds)!;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.minutes, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Second (s)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.years365)!;
            break;
          case "Week (wk)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.weeks)!;
            break;
          case "Day (d)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.days)!;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.minutes)!;
            break;
          case "Second (s)":
            res=inputValue;
            break;
          case "Millisecond (ms)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.milliseconds)!;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.seconds, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Millisecond (ms)":
        switch (selectedUnit2) {
          case "Year (Y)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.years365)!;
            break;
          case "Week (wk)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.weeks)!;
            break;
          case "Day (d)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.days)!;
            break;
          case "Hour (h)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.hours)!;
            break;
          case "Minute (min)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.minutes)!;
            break;
          case "Second (s)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.seconds)!;
            break;
          case "Millisecond (ms)":
            res=inputValue;
            break;
          case "Microsecond (µs)":
            res=inputValue.convertFromTo(TIME.milliseconds, TIME.microseconds)!;
            break;
          default:
            res=inputValue;
        }
        break;

    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }