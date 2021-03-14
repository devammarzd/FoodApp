

import 'package:flutter/material.dart';
import 'package:food_app/Styles/StyleConstants.dart';

import 'package:food_app/custom_icons_icons.dart';

class CusAppBar extends StatelessWidget {
  bool withSearchnBasket;
  String title;
  CusAppBar({@required this.withSearchnBasket, @required this.title, Key key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      backgroundColor: Colors.transparent,
      elevation: 0,
      
      leading:title=="Home"?null: Padding(
        padding: const EdgeInsets.all(padFromHorizScrn),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
              size: 19,
            ),
          ),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: withSearchnBasket
          ? [
              IconButton(
                  onPressed: () {},
                  splashRadius: 25,
                  icon: Icon(
                    Icons.search_rounded,
                    size: 22,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  splashRadius: 25,
                  icon: Icon(
                    CustomIcons.basket,
                    size: 22,
                    color: Colors.black,
                  ))
            ]
          : (withSearchnBasket == false && title == 'Home')
              ? [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,3,8,3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                      "assets/images/profilepic.jpg",
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    )),
                  ),
                ]
              : [],
    );
  }
}
