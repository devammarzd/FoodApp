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
        fontWeight: FontWeight.normal,
        color: Colors.black,
        fontFamily: Fonts.mainFont,
      ),
    ));

class CustomLargeButton extends StatelessWidget {
  final String buttonText;
  final Function onPress;

  const CustomLargeButton(
      {Key key, @required this.buttonText, @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: sizeWidth(context) / 1.1,
      height: 50.0,
      child: RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPress,
        color: primaryColor,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
