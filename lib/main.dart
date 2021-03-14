import 'package:flutter/material.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Screens/CategoriesScreens/CategoryListScreen.dart';
import 'package:food_app/Screens/DishDetails.dart';
import 'package:food_app/Screens/Filter/FilterScreen.dart';
import 'package:food_app/Screens/Popular%20Food/PopularFood.dart';
import 'package:food_app/Screens/ProfileScreens/EditProfileScreen.dart';
import 'package:food_app/Screens/ProfileScreens/ProfileScree.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      //TO be change to popular food
      home: FilterScreen(),
    );
  }
}
