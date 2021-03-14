import 'package:flutter/material.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class DishDetails extends StatefulWidget {
  @override
  _DishDetailsState createState() => _DishDetailsState();
}

class _DishDetailsState extends State<DishDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(padFromHorizScrn),
            child: Container(
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
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/ricewithgreenpeas.jpg",
                    width: sizeWidth(context),
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: sizeHeight(context) / 4.4,
                    child: Container(
                      height: sizeHeight(context),
                      width: sizeWidth(context),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          )),
                    ),
                  ),
                  Positioned(
                    top: sizeHeight(context) / 5,
                    left: sizeWidth(context) / 9,
                    child: Container(
                      width: sizeWidth(context) / 2.2,
                      height: sizeHeight(context) / 15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(color: Colors.black54, blurRadius: 4.0)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 9, 12, 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Stack(
                                //alignment:new Alignment(x, y)
                                children: <Widget>[
                                  Positioned(
                                    left: 50.0,
                                    child: RounderReviewImage(
                                      imagePath:
                                          "assets/images/profileImage.jpg",
                                    ),
                                  ),
                                  Positioned(
                                    left: 30.0,
                                    child: RounderReviewImage(
                                      imagePath: "assets/images/profilepic.jpg",
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    child: RounderReviewImage(
                                      imagePath:
                                          "assets/images/profileImage.jpg",
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //Star Icon has to be changed accorfing to design
                            Icon(
                              Icons.star,
                              color: starColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2, right: 4),
                              child: Text(
                                "4.9",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: sizeHeight(context) / 5,
                    right: sizeWidth(context) / 7,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.0),
                        boxShadow: [
                          BoxShadow(color: Colors.black54, blurRadius: 4.0)
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: sizeHeight(context) / 3.25,
                    child: Container(
                        color: Colors.white,
                        height: sizeHeight(context),
                        width: sizeWidth(context),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: sizeWidth(context) / 1.3,
                                child: Text("Rice With Green Peas And Shrimps",
                                    //Have to refactor this textstyle into headline text
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          height: 1.5,
                                        )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$45.00",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 26,
                                        ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.remove,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                        ),
                                        child: Text(
                                          "2",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: primaryColor,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("About"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "This Shrimp, Peas and Rice dish is a family favourite! It's quick to cook and requires no chopping, easy.",
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Ingredients"),
                              Container(
                                height: 110,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 8,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Material(
                                              color: Colors.white,
                                              elevation: 4,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                padding: EdgeInsets.fromLTRB(
                                                    12, 12, 12, 12),
                                                child: Column(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/illustrations/Group 3860.png",
                                                      height: 45,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 4),
                                                      child: Text(
                                                        "Green Peas",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ),
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
                              CustomLargeButton(
                                buttonText: "Add to cart",
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RounderReviewImage extends StatelessWidget {
  final String imagePath;

  const RounderReviewImage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(500),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
