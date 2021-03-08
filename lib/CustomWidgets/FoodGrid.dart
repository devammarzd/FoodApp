import 'package:flutter/material.dart';
import 'package:food_app/Data/PopularFoodData.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class FoodGrid extends StatefulWidget {
  @override
  _FoodGridState createState() => _FoodGridState();
}

class _FoodGridState extends State<FoodGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // padding: const EdgeInsets.all(8),
      crossAxisSpacing: 10,
      primary: false,
      shrinkWrap: true,

      mainAxisSpacing: 20,
      crossAxisCount: 2,

      childAspectRatio: sizeWidth(context) / (sizeHeight(context) / 1.55),
      children: popularFoodData
          .map(
            (item) => Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: sizeHeight(context) / 6,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              item["image"],
                              height: 160,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ))
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
                              child: Text(item["name"],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.headline1),
                            ),
                            Expanded(child: SizedBox()),
                            Text(
                              item["price"],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
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
                                  item['rating'],
                                  style: TextStyle(fontSize: 12),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(
                                  Icons.alarm_rounded,
                                  size: 20,
                                  color: primaryColor,
                                ),
                                Text(
                                  item["time"],
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
          )
          .toList(),
    );
  }
}
