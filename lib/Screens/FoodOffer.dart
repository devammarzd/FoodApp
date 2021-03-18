import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CusSearchBox.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/CustomWidgets/NearbyRestWidget.dart';

import 'package:food_app/Data/NearbyRest.dart';

import 'package:food_app/Screens/NearbyRest/NearbyRestScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class FoodOfferScreen extends StatefulWidget {
  @override
  _FoodOfferScreenState createState() => _FoodOfferScreenState();
}

class _FoodOfferScreenState extends State<FoodOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      isHome: false,
      appbar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "Food Offer",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: paddingFromScreenBorder,
                child: CusSearchBox(
                  isHomeScreen: true,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              width: sizeWidth(context),
              child: Column(
                children: [
                  Container(
                   
                    child: ClipRRect(
                      child: Image.asset("assets/images/illustrations/Group 34757.png",width: sizeWidth(context),height: sizeWidth(context)/1.5,fit: BoxFit.fill,),
                    ),
                  ),
                  Padding(
                    padding: paddingFromScreenBorder,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nearby Restaurants',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NearbyRestScreen()),
                              );
                            },
                            borderRadius: BorderRadius.circular(500),
                            child: Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500)),
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    ),
                  ),
                  NearbyRestWidget(
                      name: nearbyData[0]["name"],
                      image: nearbyData[0]["image"],
                      rating: nearbyData[0]["rating"].toString(),
                      time: nearbyData[0]["time"],
                      details: nearbyData[0]["detail"])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
