import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/RatingBar.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class FoodReview extends StatefulWidget {
  @override
  _FoodReviewState createState() => _FoodReviewState();
}

class _FoodReviewState extends State<FoodReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Food Review",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: paddingFromScreenBorder,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return;
          },
          child: SingleChildScrollView(
            primary: false,
            child: Container(
              height: sizeHeight(context) / 1.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: sizeWidth(context) / 1.8,
                      alignment: Alignment.center,
                      child: Text(
                        "How Was The Food Taste",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  Image.asset(
                    "assets/images/illustrations/Group 34396.png",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    width: sizeWidth(context) / 1.6,
                    child: RatingBar(
                      rating: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.comment,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add a comment",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: sizeHeight(context) / 4.5,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 10,
                          child: CustomLargeButton(
                            buttonText: "Done",
                            onPress: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
