import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/CusSearchBox.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/Data/PopularFoodData.dart';
import 'package:food_app/Data/SearchData.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isRestaurant=false;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 0,
        isHome: false,
        appbar: PreferredSize(
          preferredSize:
              Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
          child: CusAppBar(
            withSearchnBasket: true,
            title: "Search",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: paddingFromScreenBorder,
            child: Column(
              children: [
                CusSearchBox(
                  isHomeScreen: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: sizeWidth(context),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            isRestaurant=false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color:isRestaurant==false? primaryColor:Colors.white,
                        child: Container(
                          width: sizeWidth(context) / 3,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'Foods',
                            style: TextStyle(
                                fontSize: 14,
                                color:isRestaurant==false?  Colors.white:Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                        RaisedButton(
                        onPressed: () {
                          setState(() {
                            isRestaurant=true;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color:isRestaurant==true? primaryColor:Colors.white,
                        child: Container(
                          width: sizeWidth(context) / 3,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            'Restaurants',
                            style: TextStyle(
                                fontSize: 14,
                                color:isRestaurant==true?  Colors.white:Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                  
                ),
                SizedBox(height: 15,),
                GridView.count(
      // padding: const EdgeInsets.all(8),
      crossAxisSpacing: 10,
      primary: false,
      shrinkWrap: true,

      mainAxisSpacing: 20,
      crossAxisCount: 2,

      childAspectRatio: sizeWidth(context) / (sizeHeight(context) / 1.30),
      children: searchData
          .map(
            (item) => Card(
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                  
                      width: double.infinity,
                   height: sizeHeight(context) / 5.4,
                      decoration: BoxDecoration(
                   
                          borderRadius: BorderRadius.circular(30)),
                      child: Stack(
                        children: [
                   
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                item["image"],
                                height: sizeHeight(context) / 5.8,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              )),
                              Align(alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)
                                  ,
                                  color: primaryColor
                                ),
                                padding: EdgeInsets.fromLTRB(12, 3, 12, 3),
                                child: Text(item["price"],style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),),
                              ),
                              
                              )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: sizeWidth(context),
                              child: Text(item["name"],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyText2),
                            ),
                              SizedBox(
                              height: 5,
                            ),
                            Text(item["desc"],style: TextStyle(color: lightColor,fontSize: 12),),
                            Expanded(child: SizedBox()),
                         
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: starColor,
                                  size: 20,
                                ),
                                Text(
                                  item['rating'],
                                  style: TextStyle(fontSize: 12),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(
                                  Icons.alarm_rounded,
                                  size: 20,
                                  color: primaryColor,
                                ),
                                Text(
                                  item["time"],
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 3,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
    )
              ],
            ),
          ),
        ));
  }
}
