import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomDrawer.dart';
import 'package:food_app/Screens/Account/AccountScreen.dart';
import 'package:food_app/Screens/CategoriesScreens/CategoryListScreen.dart';
import 'package:food_app/Screens/Favourite/FavouriteScreen.dart';
import 'package:food_app/Screens/Home/HomeScreen.dart';
import 'package:food_app/Screens/Notification/NotificationScreen.dart';
import 'package:food_app/Screens/Popular%20Food/PopularFood.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class CustomScaffold extends StatefulWidget {
  final int index;
 final Widget appbar;
 final Widget body;
 final bool isHome;
  CustomScaffold(
      {@required this.index,
      @required this.appbar,
      @required this.body,
    this.isHome,
      Key key})
      : super(key: key);
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: widget.appbar,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 8,
        backgroundColor: primaryColor,
        child: Icon(
          Icons.shopping_bag_rounded,
          color: Colors.white,
        ),
      ),
      
      drawer:widget.isHome==true?CustomDrawer(): null,

      body: widget.body,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: widget.index,
        gapLocation: GapLocation.center,
        activeColor: primaryColor,
        height: 70,
        inactiveColor: lightColor,
        splashSpeedInMilliseconds: 200,
        splashRadius: 0,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (i) {
          if (i != widget.index) {
            if (i == 0) {
               Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false);
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => PopularFood()),
              // );
            } else if (i == 1) {
                  //            Navigator.of(context).pushAndRemoveUntil(
                  // MaterialPageRoute(builder: (context) => CategoryScreen()),
                  // (Route<dynamic> route) => false);
     
            }
          }
        },
      ),
    );
  }
}
