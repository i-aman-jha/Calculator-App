import 'package:currency_converter/currency.dart';
import 'package:currency_converter/currency_converter.dart';
import 'package:flutter/material.dart';



Future<void> convertcurrency(String selectedUnit1,String selectedUnit2,String input,TextEditingController outputtextFieldController) async {
    double inputValue = double.tryParse(input) ?? 0;

    double? res;
    switch(selectedUnit1){
      case "Euro (EUR)":
        switch (selectedUnit2) {
          case "Euro (EUR)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.eur,amount: inputValue,);
            break;
          case "United States Dollar (USD)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.usd,amount: inputValue,);
            break;
          case "British Pound Sterling (GBP)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.gbp,amount: inputValue,);
            break;
          case "Japanese Yen (JPY)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.jpy,amount: inputValue,);
            break;
          case "Swiss Franc (CHF)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.chf,amount: inputValue,);
            break;
          case "UAE Dirham (AED)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.aed,amount: inputValue,);
            break;
          case "Australian Dollar (AUD)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.aud,amount: inputValue,);
            break;
          case "Brazilian Real (BRL)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.brl,amount: inputValue,);
            break;
          case "Canadian Dollar (CAD)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.cad,amount: inputValue,);
            break;
          case "Chinese Yuan (CNY)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.cny,amount: inputValue,);
            break;
          case "Indian Rupee (INR)":
            res= await CurrencyConverter.convert(from: Currency.eur,to: Currency.inr,amount: inputValue,);
            break;
        }
        break;

      // case "United States Dollar (USD)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= CurrencyConverter.convert(from: Currency.eur,to: Currency.usd,amount: inputValue,);
      //       break;
      //     case "United States Dollar (USD)":
      //       res=inputValue;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "British Pound Sterling (GBP)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res=inputValue;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Miles (mi)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res=inputValue;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Swiss Franc (CHF)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res=inputValue;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "UAE Dirham (AED)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res=inputValue;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Australian Dollar (AUD)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res=inputValue;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Canadian Dollar (CAD)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res=inputValue;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Chinese Yuan (CNY)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res=inputValue;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Indian Rupee (INR)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res= ;
      //       break;
      //     case "United States Dollar (USD)":
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res= ;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res=inputValue;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

      // case "Brazilian Real (BRL)":
      //   switch (selectedUnit2) {
      //     case "Euro (EUR)":
      //       res=inputValue/10;
      //       break;
      //     case "United States Dollar (USD)":
      //       // res=inputValue*10;
      //       res= ;
      //       break;
      //     case "British Pound Sterling (GBP)":
      //       // res=inputValue*100;
      //       res= ;
      //       break;
      //     case "Japanese Yen (JPY)":
      //       res= ;
      //       break;
      //     case "Swiss Franc (CHF)":
      //       res= ;
      //       break;
      //     case "UAE Dirham (AED)":
      //       res= ;
      //       break;
      //     case "Australian Dollar (AUD)":
      //       res= ;
      //       break;
      //     case "Brazilian Real (BRL)":
      //       res=inputValue;
      //       break;
      //     case "Canadian Dollar (CAD)":
      //       res= ;
      //       break;
      //     case "Chinese Yuan (CNY)":
      //       res= ;
      //       break;
      //     case "Indian Rupee (INR)":
      //       res= ;
      //       break;
      //     default:
      //       res=inputValue;
      //   }
      //   break;

    }

    // double outputValue = res;
    outputtextFieldController.text = res.toString();

  }

