import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          title: "Profile",
          withSearchnBasket: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingFromScreenBorder,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  // color: Colors.amber,
                  height: 130,
                  width: 120,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/images/profileImage.jpg",
                          height: 110,
                          width: 110,
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 80,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 22,
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text("asdsa")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
