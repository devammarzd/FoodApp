import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomButton.dart';
import 'package:food_app/CustomWidgets/CustomSmallButton.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class RunningOrderScreen extends StatefulWidget {
  @override
  _RunningOrderScreenState createState() => _RunningOrderScreenState();
}

class _RunningOrderScreenState extends State<RunningOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "My Order",
        ),
      ),
      body: Padding(
        padding: paddingFromScreenBorder,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onPressed: () {},
                  text: "Running Order",
                  buttonColor: primaryColor,
                  textColor: Colors.white,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Post Order",
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: sizeHeight(context) / 3.3,
                width: sizeWidth(context) / 1.1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(500),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/illustrations/burgerkinglogo.png",
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(500),
                                child: Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(500),
                                child: Image.asset(
                                  "assets/images/mousse.jpg",
                                  height: 54,
                                  width: 54,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "#2145",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Whipping cream",
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$03.99",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 18),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Items:5",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text(
                          "Delivery Time: 20 Min",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomSmallButton(
                          onPressed: () {},
                          text: "Track Order",
                          buttonColor: primaryColor,
                          textColor: Colors.white,
                        ),
                        CustomSmallButton(
                          onPressed: () {},
                          text: "Cancel",
                          buttonColor: Colors.white,
                          textColor: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
