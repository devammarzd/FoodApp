import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/Account/AccountScreen.dart';
import 'package:food_app/Screens/Favourite/FavouriteScreen.dart';
import 'package:food_app/Screens/Home/HomeScreen.dart';
import 'package:food_app/Screens/Notification/NotificationScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var _bottomNavigationIndex = 0;

  //List of icons used in the bottom  Navigation Bar
  final iconList = <IconData>[
    Icons.home_sharp,
    Icons.notifications,
    Icons.favorite_outlined,
    Icons.person,
  ];

  final List<Widget> navigationContent = [
    HomeScreen(),
    NotificationScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 8,
          backgroundColor: primaryColor,
          child: Icon(
            Icons.shopping_bag_rounded,
            color: Colors.white,
          ),
        ),
        body: navigationContent[_bottomNavigationIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavigationIndex,
          gapLocation: GapLocation.center,
          activeColor: primaryColor,
          height: 70,
          inactiveColor: lightColor,
          splashSpeedInMilliseconds: 200,
          splashRadius: 0,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => setState(() => _bottomNavigationIndex = index),
        ),
      ),
    );
  }
}
