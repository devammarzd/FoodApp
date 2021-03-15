import 'package:flutter/material.dart';
import 'package:food_app/Screens/SearchScreen/SearchScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class CusSearchBox extends StatefulWidget {
  bool isHomeScreen;
  CusSearchBox({@required this.isHomeScreen, Key key}) : super(key: key);
  @override
  _CusSearchBoxState createState() => _CusSearchBoxState();
}

class _CusSearchBoxState extends State<CusSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth(context),
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: lightgreyColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "Search"),
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              if (widget.isHomeScreen) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              width: 60,
              height: 60,
              alignment: Alignment.center,
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
