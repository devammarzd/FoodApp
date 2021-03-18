import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/CustomWidgets/NearbyRestWidget.dart';
import 'package:food_app/Data/FoodTypes.dart';
import 'package:food_app/Data/NearbyRest.dart';
import 'package:food_app/Data/SearchData.dart';
import 'package:food_app/Screens/DishDetails.dart';
import 'package:food_app/Screens/Popular%20Food/PopularFood.dart';
import 'package:food_app/Screens/RestaurantMap/RestaurantMap.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RestProfileScreen extends StatefulWidget {
  @override
  _RestProfileScreenState createState() => _RestProfileScreenState();
}

class _RestProfileScreenState extends State<RestProfileScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 0,
        appbar: null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              topWidget(),
              fooditemsListView(),
              Padding(
                padding: paddingFromScreenBorder,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Foods',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    InkWell(
                        onTap: () {
                                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PopularFood()),
                          );
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500)),
                            child: Text(
                              "View All",
                              style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                            ))),

                  ],
                ),
              ),
              popularfoodsSlider(),
                 Padding(
                padding: paddingFromScreenBorder,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Seller',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    InkWell(
                        onTap: () {
                          //           Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => Food()),
                          // );
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500)),
                            child: Text(
                              "View All",
                              style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                            ))),

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
        ));
  }

  Widget popularfoodsSlider() {
    return Container(
      height: sizeHeight(context) / 2.7,
      width: sizeWidth(context),
      child: ListView.builder(
          itemCount: searchData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: paddingFromScreenBorder,
              child: AspectRatio(
                aspectRatio: sizeWidth(context) / (sizeHeight(context) / 1.30),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: InkWell(
                    onTap: (){
                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DishDetails()),
                              );
                    },
                         borderRadius: BorderRadius.circular(30),
                                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: sizeHeight(context) / 5.4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Stack(
                                children: [
                                  Container(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset(
                    searchData[i]["image"],
                    height: sizeHeight(context) / 5.8,
                    width: double.infinity,
                    fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(500),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 20,
                    ),
                                      )),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryColor),
                                      padding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                                      child: Text(
                    searchData[i]["price"],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: sizeWidth(context),
                                      child: Text(searchData[i]["name"],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headline5),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      searchData[i]["desc"],
                                      style: TextStyle(
                      color: lightColor, fontSize: 12),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Row(
                                      children: [
                    Icon(
                      Icons.star,
                      color: starColor,
                      size: 20,
                    ),
                    Text(
                      searchData[i]['rating'],
                      style: TextStyle(fontSize: 12),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.alarm_rounded,
                      size: 20,
                      color: primaryColor,
                    ),
                    Text(
                      searchData[i]["time"],
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: 3,
                    )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget fooditemsListView() {
    return Container(
      height: 70,
      width: sizeWidth(context),
      child: ListView.builder(
          itemCount: foodTypes.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 2,
                shadowColor: Colors.grey[100],
                color: selectedIndex == i ? primaryColor : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                      child: Text(foodTypes[i]["name"] + " Items",
                          style: Theme.of(context).textTheme.headline1.copyWith(
                              color: selectedIndex == i
                                  ? Colors.white
                                  : lightColor)),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget topWidget() {
    return Container(
        height: 400,
        width: sizeWidth(context),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
              child: Image.asset(
                "assets/images/burgerking2.jpg",
                fit: BoxFit.fill,
                height: 250,
                width: sizeWidth(context),
              ),
            ),
            Positioned(
              left: 15,
              top: 40,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: sizeWidth(context) / 1.3,
                height: 200,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                         borderRadius: BorderRadius.circular(25),
                        onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RestaurantMap()),
                              );
                        },
                                              child: Container(
                          width: sizeWidth(context) / 1.3,
                          height: 180,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[200],
                                    offset: Offset(0, 10),
                                    blurRadius: 20)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                            color: Colors.grey[400],
                                            fontSize: 12),
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
                                            color: Colors.grey[400],
                                            fontSize: 12),
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
                                            color: Colors.grey[400],
                                            fontSize: 12),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
            )
          ],
        ));
  }
}
