import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/basket_icons.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(withSearchnBasket: true,title: "Categories",),
      ),
      body: SingleChildScrollView(
        child: Padding(
                 padding: paddingFromScreenBorder,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: ListView.builder(
                    itemCount: catData.length,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, i) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          elevation: 5,
                          shadowColor: Colors.blueGrey[50],
                          child: Container(
                            width: sizeWidth(context) / 1.3,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: Row(
                                children: [
                                  Image.asset(
                                    catData[i]['image'],
                                    width: i == 3 ? 50 : 60,
                                    height: i == 3 ? 80 : 60,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    catData[i]['name'],
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Expanded(child: Container())
                                ],
                              ),
                            ),
                          ));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
