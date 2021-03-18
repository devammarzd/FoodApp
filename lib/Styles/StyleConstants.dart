import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Color primaryColor= Color(0xfff24f04);
final Color starColor=Color(0xfffcc342);
final Color lightgreyColor=Color(0xffF6F6F6);
sizeHeight(BuildContext context){
  double height=MediaQuery.of(context).size.height;
  return height;
}

sizeWidth(BuildContext context){
  double width=MediaQuery.of(context).size.width;
  return width;
}
currTxtScaleFac(BuildContext context){
 double currTextScaleFactor=  MediaQuery.of(context).textScaleFactor;
 return currTextScaleFactor;
}
resizeFactor(BuildContext context){
   double _resizeFactor;
   double currTextScaleFactor=currTxtScaleFac(context);
  if(currTextScaleFactor>1){
_resizeFactor= currTextScaleFactor*0.87;
  }
  else{
 _resizeFactor=1.0;
  }

 return _resizeFactor;
}
const double padFromHorizScrn=10.0;
const EdgeInsets paddingFromScreenBorder=const EdgeInsets.fromLTRB(padFromHorizScrn, 5, padFromHorizScrn, 5);

final TextStyle checkoutStyle=TextStyle(color: Colors.red);