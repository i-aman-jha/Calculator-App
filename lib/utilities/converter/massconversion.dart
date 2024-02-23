import 'package:flutter/material.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/mass.dart';

void convertmass(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) {
    double inputValue = double.tryParse(input) ?? 0;

    double res = 0;
    switch(selectedUnit1){
      case "Kilogram (Kg)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.kilograms, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Gram (g)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.grams, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.grams, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.grams, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.grams, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.grams, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.grams, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.grams, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.grams, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Milligram (mg)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.milligrams, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Tons":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.tons, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.tons, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.tons, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.tons, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.tons, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.tons, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.tons, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.tons, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Pound (lb)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.pounds, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.pounds, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Carat (ct)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.carats, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.carats, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.carats, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.carats, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.carats, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.carats, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.carats, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.carats, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

      case "Quintal (q)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.quintals, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.quintals, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue;
            break;
          default:
            res=inputValue;
        }
        break;


      case "Stone (st)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.stones, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.stones, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.stones, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.stones, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.stones, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.stones, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue.convertFromTo(MASS.stones, MASS.micrograms)!;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.stones, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;
      case "Microgram (µg)":
        switch (selectedUnit2) {
          case "Kilogram (Kg)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.kilograms)!;
            break;
          case "Gram (g)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.grams)!;
            break;
          case "Milligram (mg)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.milligrams)!;
            break;
          case "Stone (st)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.stones)!;
            break;
          case "Tons":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.tons)!;
            break;
          case "Pound (lb)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.pounds)!;
            break;
          case "Carat (ct)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.carats)!;
            break;
          case "Microgram (µg)":
            res=inputValue;
            break;
          case "Quintal (q)":
            res=inputValue.convertFromTo(MASS.micrograms, MASS.quintals)!;
            break;
          default:
            res=inputValue;
        }
        break;

    }

    double outputValue = res;
    outputtextFieldController.text = outputValue.toString();
  }