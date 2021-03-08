import 'package:flutter/material.dart';
import 'package:food_app/Styles/StyleConstants.dart';
class Fonts {
  static String get _mulish => 'Mulish';
  // static String get _gillSansBoltNova => 'assets/fonts/GillSansBoltNova.tff';
  static String get mainFont => _mulish;

}

final ThemeData themeData = ThemeData(

    primaryColor: primaryColor,
    accentColor: primaryColor,
    cursorColor: Colors.black,
    fontFamily: Fonts.mainFont,
    
    textTheme: TextTheme(
     
      headline1: TextStyle(//This style is for product card headings that are in grid view
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color:Colors.purple,
        fontFamily: Fonts.mainFont,
      ),
      headline2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
      headline3: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
      bodyText1: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.normal,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
    ));
