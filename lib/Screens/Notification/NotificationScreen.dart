import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(index: 1, appbar: PreferredSize(
      preferredSize:
          Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
      child: CusAppBar(
        withSearchnBasket: false,
        title: "Notifications",
      ),
    ),
    body: Container(
      child: Text("Notifications"),
    ),
    
    );
  }
}
