import 'package:flutter/material.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class CustomSmallButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;

  const CustomSmallButton(
      {Key key,
      @required this.onPressed,
      @required this.text,
      this.buttonColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 85,
      height: 28.0,
      child: RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: onPressed,
        color: buttonColor,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
