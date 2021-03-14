import 'package:flutter/material.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class Fonts {
  static String get _mulish => 'Mulish';
  // static String get _gillSansBoltNova => 'assets/fonts/GillSansBoltNova.tff';
  static String get mainFont => _mulish;
}

Color lightColor = Colors.grey;

final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    accentColor: primaryColor,
    cursorColor: Colors.black,
    fontFamily: Fonts.mainFont,
    textTheme: TextTheme(
      headline1: TextStyle(
          //This style is for product card headings that are in grid view
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: Fonts.mainFont,
          letterSpacing: -0.4),
      headline2: TextStyle(
        //this is for the headings in scafold body like "Popular Food Items" in popular food screen
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
      // light text style for sub text
      //also has to adjsut line height after removing from textstyles in editprofile screen
      headline3: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        fontFamily: Fonts.mainFont,
      ),
      //this style is for bold headings used in dish details screen
      headline4: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),

      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
      bodyText2:  TextStyle(//for common heading of font size 16
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
    ));
