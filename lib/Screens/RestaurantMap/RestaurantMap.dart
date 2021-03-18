import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomButton.dart';
import 'package:food_app/Data/NearbyRest.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RestaurantMap extends StatefulWidget {
  @override
  _RestaurantMapState createState() => _RestaurantMapState();
}

class _RestaurantMapState extends State<RestaurantMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: false,
          title: "Restaurant Info",
        ),
      ),
      body: Container(
        width: sizeWidth(context),
        height: sizeHeight(context),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: paddingFromScreenBorder,
              child: Container(
                width: sizeWidth(context),
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 3),
                        child: Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            decoration: InputDecoration.collapsed(
                                hintText: "Search",
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 60,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.gps_not_fixed_rounded,
                          color: primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            Center(
                          child: InkWell(
                onTap: () {
                  showRestaurantInfo();
                },
                borderRadius: BorderRadius.circular(500),
                child: Container(
                  height: 50,
                  width: 50,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color: Colors.white),
                  child: Image.asset(
                    "assets/images/illustrations/burgerkinglogo.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
                Expanded(child: SizedBox()),
            // RaisedButton(onPressed: ()  {
            //   showRestaurantInfo();
            // }),
          ],
        ),
      ),
    );
  }

  showRestaurantInfo() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              color: Colors.transparent,
              height: 250,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200],
                                offset: Offset(0, 10),
                                blurRadius: 20)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    color: primaryColor),
                                child: Icon(
                                  Icons.bookmark,
                                  color: Colors.white,
                                  size: 22,
                                ),
                              ),
                            ),
                            Text(
                              "Burger King",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                                width: sizeWidth(context) / 2.8,
                                alignment: Alignment.center,
                                child: Text(
                                  "42 Riverside Se.NonCross GA 30092",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: lightColor, fontSize: 12),
                                )),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(child: SizedBox()),
                                Icon(
                                  Icons.star,
                                  color: starColor,
                                  size: 24,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.alarm_rounded,
                                  size: 24,
                                  color: primaryColor,
                                ),
                                Text(
                                  "20-30 Mins",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  MdiIcons.moped,
                                  size: 26,
                                  color: Colors.yellow[800],
                                ),
                                Text(
                                  "Free Delivery",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Expanded(child: SizedBox()),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightgreyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  alignment: Alignment.center,
                                  child: Text(
                                    nearbyData[0]["detail"][0],
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 12),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightgreyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  alignment: Alignment.center,
                                  child: Text(
                                    nearbyData[0]["detail"][1],
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 12),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: lightgreyColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  alignment: Alignment.center,
                                  child: Text(
                                    nearbyData[0]["detail"][2],
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomButton(
                              onPressed: () {},
                              text: "More Details",
                              buttonColor: primaryColor,
                              textColor: Colors.white,
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.white),
                      child: Image.asset(
                        "assets/images/illustrations/burgerkinglogo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
