import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> priceCount = ["20-30", "50-70", "80-110", "110-150"];
  List<int> starCount = [1, 2, 3, 4, 5];
  List<String> restaurantCount = [
    "Burger King",
    "McDonald\'s",
    "Pizza Hut",
    "Domino's",
    "Starbucks"
  ];
  List<String> foodTypeCount = [
    "Fast Food ",
    "Healthy Food",
    "Desserts",
    "Drinks"
  ];
  int priceSelectedIndex = 0;
  int ratingSelectedIndex = 0;
  int foodTypeSelectedIndex = 0;
  int restaurantSelectedIndex = 0;
  bool isSelected = false;

  _onPriceSelected(int index) {
    setState(() => priceSelectedIndex = index);
  }

  _onRatingSelected(int index) {
    setState(() => ratingSelectedIndex = index);
  }

  _onFoodtypeSelected(int index) {
    setState(() => foodTypeSelectedIndex = index);
  }

  _onrestaurantSelected(int index) {
    setState(() => restaurantSelectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "Filter",
        ),
      ),
      body: Padding(
        padding: paddingFromScreenBorder,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Filter Your Search",
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Price",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            // Container for price filter
            //have to look for a way to make it a separte widget. cant do it beacuse of listview.builder
            Container(
              height: 50,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: priceCount.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _onPriceSelected(index),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                              decoration: BoxDecoration(
                                color: priceSelectedIndex != null &&
                                        priceSelectedIndex == index
                                    ? primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: lightColor),
                              ),
                              child: Text(
                                priceCount[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: priceSelectedIndex != null &&
                                            priceSelectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Rating",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            //Rating filter starts here
            Container(
              height: 50,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: starCount.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _onRatingSelected(index),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                              decoration: BoxDecoration(
                                color: ratingSelectedIndex != null &&
                                        ratingSelectedIndex == index
                                    ? primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: lightColor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: ratingSelectedIndex != null &&
                                            ratingSelectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  Text(
                                    starCount[index].toString(),
                                    style: TextStyle(
                                      color: ratingSelectedIndex != null &&
                                              ratingSelectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Food types",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            //Food type section work here
            Container(
              height: 50,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: foodTypeCount.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _onFoodtypeSelected(index),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                              decoration: BoxDecoration(
                                color: foodTypeSelectedIndex != null &&
                                        foodTypeSelectedIndex == index
                                    ? primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: lightColor),
                              ),
                              child: Text(
                                foodTypeCount[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11,
                                    color: foodTypeSelectedIndex != null &&
                                            foodTypeSelectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Restaurant Section here
            Text(
              "Restaurant",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: restaurantCount.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => _onrestaurantSelected(index),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                              decoration: BoxDecoration(
                                color: restaurantSelectedIndex != null &&
                                        restaurantSelectedIndex == index
                                    ? primaryColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: lightColor),
                              ),
                              child: Text(
                                restaurantCount[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: restaurantSelectedIndex != null &&
                                          restaurantSelectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: CustomLargeButton(
                    buttonText: "Apply Filter",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
