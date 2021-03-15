import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomButton.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class MyOrderScreen extends StatefulWidget {
  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
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
            Image.asset("assets/images/illustrations/Group 4189.png"),
            SizedBox(
              height: 20,
            ),
            Container(
              width: sizeWidth(context) / 1.4,
              alignment: Alignment.center,
              child: Text(
                "No Running Order Right Now",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: CustomLargeButton(
                  onPress: () {},
                  buttonText: "Order Now",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
