import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:food_app/custom_icons_icons.dart';

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
      resizeToAvoidBottomPadding: true,
      body: Padding(
        padding: paddingFromScreenBorder,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: sizeHeight(context) / 1.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/images/profilepic.jpg",
                            height: 110,
                            width: 110,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 22,
                              color: Colors.black87,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ProfileTextField(
                    fieldIcon: Icon(Icons.person_outline_outlined),
                    textLabel: "User Name",
                  ),
                  ProfileTextField(
                    fieldIcon: Icon(Icons.person_outline_outlined),
                    textLabel: "Full Name",
                  ),
                  ProfileTextField(
                    fieldIcon: Icon(
                      CustomIcons.email,
                      size: 16,
                    ),
                    textLabel: "Email",
                  ),
                  ProfileTextField(
                    fieldIcon: Icon(
                      CustomIcons.address,
                      size: 16,
                    ),
                    textLabel: "Address",
                  ),
                  Container(),
                  //Have to make it a custom button
                  CustomLargeButton(
                    onPress: () {},
                    buttonText: "Save Changes",
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileTextField extends StatelessWidget {
  final Icon fieldIcon;
  final String textLabel;
  final TextEditingController textController;

  const ProfileTextField(
      {Key key,
      @required this.fieldIcon,
      @required this.textLabel,
      this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: sizeWidth(context) / 1.1,
      decoration: BoxDecoration(
          border: Border.all(color: lightColor),
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Container(
            width: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 5),
              child: fieldIcon,
            ),
          ),
          VerticalDivider(
            color: lightColor,
            thickness: 1,
            indent: 5.5,
            endIndent: 5.5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: TextField(
                controller: textController,
                decoration: InputDecoration(
                  labelText: textLabel,
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                    top: 1,
                  ),
                  labelStyle: TextStyle(
                    color: lightColor,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
