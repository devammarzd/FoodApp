import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/FoodGrid.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Data/PopularFoodData.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class PopularFood extends StatefulWidget {
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      appbar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "Popular Food",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingFromScreenBorder,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Popular Food \nItems",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 20,
              ),
             FoodGrid()
            ],
          ),
        ),
      ),
    );
  }
}
