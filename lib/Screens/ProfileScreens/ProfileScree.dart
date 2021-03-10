import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CustomButton.dart';
import 'package:food_app/CustomWidgets/FoodGrid.dart';
import 'package:food_app/Screens/ProfileScreens/EditProfileScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/profileImage.jpg",
                  height: 110,
                  width: 110,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Dwanye Johnson",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 160,
                child: Text(
                  "47 W 13th St, New York, NY 10011, USA",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        height: 1.7,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              //Edit text and icon isnt aligned properly
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Edit Profile"),
                  InkWell(
                    borderRadius: BorderRadius.circular(500),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: primaryColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    onPressed: () {},
                    text: "Favourite",
                    buttonColor: primaryColor,
                    textColor: Colors.white,
                  ),
                  CustomButton(
                    onPressed: () {},
                    text: "Settings",
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              FoodGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
