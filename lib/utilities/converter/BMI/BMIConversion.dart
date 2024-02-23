import 'package:units_converter/units_converter.dart';

List<String> convertBMI(String selectedUnit1, String selectedUnit2, String weight, String height) {
  double weightValue = double.tryParse(weight) ?? 0;
  double heightValue = double.tryParse(height) ?? 0;

  switch (selectedUnit1) {
    case "Kilogram (kg)":
      break;
    case "Pound (lb)":
      weightValue = weightValue.convertFromTo(MASS.pounds, MASS.kilograms)!;
      break;
  }

  switch (selectedUnit2) {
    case "Meter (m)":
      break;
    case "Centimeter (cm)":
      heightValue = heightValue.convertFromTo(LENGTH.centimeters, LENGTH.meters)!;
      break;
    case "Feet (ft)":
      heightValue = heightValue.convertFromTo(LENGTH.feet, LENGTH.meters)!;
      break;
    case "Inch (in)":
      heightValue = heightValue.convertFromTo(LENGTH.inches, LENGTH.meters)!;
      break;
  }

  double res = weightValue / (heightValue * heightValue);
  res = double.parse(res.toStringAsFixed(1));
  String bmiResult = res.toString();

  String bmiCategory = '';
  if (res < 16) {
    bmiCategory = "Severely Underweight";
  } else if (res >= 16 && res <= 16.9) {
    bmiCategory = "Underweight";
  } else if (res > 16.9 && res <= 18.4) {
    bmiCategory = "Underweight";
  } else if (res > 18.4 && res <= 24.9) {
    bmiCategory = "Normal";
  } else if (res > 24.9 && res <= 29.9) {
    bmiCategory = "Overweight";
  } else if (res > 29.9 && res <= 34.9) {
    bmiCategory = "Obesity (Class I)";
  } else if (res > 34.9 && res <= 39.9) {
    bmiCategory = "Obesity (Class II)";
  } else if (res >= 40) {
    bmiCategory = "Obesity (Class III)";
  }

  return [bmiResult, bmiCategory];
}
