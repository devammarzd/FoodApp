import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CusSearchBox.dart';
import 'package:food_app/CustomWidgets/NearbyRestWidget.dart';
import 'package:food_app/Data/FoodTypes.dart';
import 'package:food_app/Data/NearbyRest.dart';
import 'package:food_app/Data/PopularFoodData.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/Screens/DishDetails.dart';
import 'package:food_app/Screens/NearbyRest/NearbyRestScreen.dart';
import 'package:food_app/Screens/Popular%20Food/PopularFood.dart';
import 'package:food_app/Screens/RestProfile.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      isHome: true,
      appbar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: false,
          title: "Home",
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
              height: 70,
              width: sizeWidth(context),
              child: ListView.builder(
                  itemCount: foodTypes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.grey[100],
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                            child: Row(
                              children: [
                                ClipRRect(
                                    child: Image.asset(
                                  foodTypes[i]["image"],
                                  height: foodTypes[i]["height"],
                                  width: foodTypes[i]["width"],
                                  fit: BoxFit.fill,
                                )),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(foodTypes[i]["name"],
                                    style:
                                        Theme.of(context).textTheme.headline1)
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: sizeWidth(context),
              child: Column(
                children: [
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
                                )))
                      ],
                    ),
                  ),
                  Container(
                    height: 270*resizeFactor(context),
                    child: ListView.builder(
                        itemCount: popularFoodDataHome.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: InkWell(
                                  borderRadius:
                                                BorderRadius.circular(30),
                                onTap: (){
                                      Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DishDetails()),
                              );
                                },
                                                              child: Container(
                                  width: 230,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 230,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              child: Image.asset(
                                                popularFoodDataHome[i]["image"],
                                                height: 150,
                                                width: 230,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Positioned(
                                                top: 10,
                                                right: 10,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              500),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.bookmark,
                                                    color: primaryColor,
                                                    size: 20,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 8, 10, 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // width: sizeWidth(context),
                                                child: Text(
                                                    popularFoodDataHome[i]
                                                        ["name"],
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1),
                                              ),
                                              Expanded(child: SizedBox()),
                                              Text(
                                                popularFoodDataHome[i]["price"],
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: starColor,
                                                    size: 20,
                                                  ),
                                                  Text(
                                                    popularFoodDataHome[i]
                                                        ['rating'],
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Icon(
                                                    Icons.alarm_rounded,
                                                    size: 20,
                                                    color: primaryColor,
                                                  ),
                                                  Text(
                                                    popularFoodDataHome[i]
                                                        ["time"],
                                                    style:
                                                        TextStyle(fontSize: 12),
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
                          );
                        }),
                  )
                ],
              ),
            ),
            Container(
              width: sizeWidth(context),
              child: Column(
                children: [
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
                                  style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
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
