import 'package:flutter/material.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Screens/CategoriesScreens/CategoryListScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:food_app/basket_icons.dart';

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
      home: CategoryScreen(),
    );
  }
}

