import 'package:flutter/cupertino.dart';

final Color primaryColor= Color(0xfff24f04);

sizeHeight(BuildContext context){
  double height=MediaQuery.of(context).size.height;
  return height;
}

sizeWidth(BuildContext context){
  double width=MediaQuery.of(context).size.width;
  return width;
}