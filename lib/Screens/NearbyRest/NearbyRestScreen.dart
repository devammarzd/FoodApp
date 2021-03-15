import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/CustomWidgets/NearbyRestWidget.dart';
import 'package:food_app/Data/NearbyRest.dart';
import 'package:food_app/CustomWidgets/CustomScaffold.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class NearbyRestScreen extends StatefulWidget {
  @override
  _NearbyRestScreenState createState() => _NearbyRestScreenState();
}

class _NearbyRestScreenState extends State<NearbyRestScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 0,
      appbar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "Nearby Restaurant",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingFromScreenBorder,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Nearby \nRestaurants",
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 20,
              ),
        ListView.builder(
          itemCount: nearbyData.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context,i){
          return  Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8),
             child: NearbyRestWidget(name: nearbyData[i]["name"], image:  nearbyData[i]["image"], rating: nearbyData[i]["rating"].toString(), time: nearbyData[i]["time"], details: nearbyData[i]["detail"])
            // Container(
            //           height: 270,
            //           child: Card(
            //             color: Colors.white,
            //             elevation: 4,
            //             shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(30)),
            //             child: Container(
            //               width: sizeWidth(context),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Container(
            //                     width: sizeWidth(context),
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(30)),
            //                     child: Stack(
            //                       children: [
            //                         ClipRRect(
            //                           borderRadius: BorderRadius.circular(30),
            //                           child: Image.asset(
            //                             nearbyData[0]["image"],
            //                             height: 150,
            //                             width: sizeWidth(context),
            //                             fit: BoxFit.fill,
            //                           ),
            //                         ),
            //                         Positioned(
            //                             top: 10,
            //                             right: 10,
            //                             child: Container(
            //                               padding: EdgeInsets.all(5),
            //                               decoration: BoxDecoration(
            //                                   borderRadius:
            //                                       BorderRadius.circular(500),
            //                                   color: Colors.white),
            //                               child: Icon(
            //                                 Icons.bookmark,
            //                                 color: primaryColor,
            //                                 size: 20,
            //                               ),
            //                             )),
            //                         Positioned(
            //                             top: 10,
            //                             left: 10,
            //                             child: Container(
            //                                 padding:
            //                                     EdgeInsets.fromLTRB(8, 5, 8, 5),
            //                                 decoration: BoxDecoration(
            //                                     borderRadius:
            //                                         BorderRadius.circular(500),
            //                                     color: primaryColor),
            //                                 child: Text(
            //                                   "Free Delivery",
            //                                   style: TextStyle(
            //                                       fontSize: 12,
            //                                       color: Colors.white,
            //                                       fontWeight: FontWeight.bold),
            //                                 )))
            //                       ],
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: Padding(
            //                       padding:
            //                           const EdgeInsets.fromLTRB(10, 8, 10, 8),
            //                       child: Column(
            //                         crossAxisAlignment:
            //                             CrossAxisAlignment.start,
            //                         children: [
            //                           Container(
            //                             // width: sizeWidth(context),
            //                             child: Text(nearbyData[i]["name"],
            //                                 maxLines: 1,
            //                                 overflow: TextOverflow.ellipsis,
            //                                 style: Theme.of(context)
            //                                     .textTheme
            //                                     .bodyText1),
            //                           ),
            //                           Expanded(child: SizedBox()),
            //                           Row(
            //                             children: [
            //                               Icon(
            //                                 Icons.star,
            //                                 color: starColor,
            //                                 size: 20,
            //                               ),
            //                               Text(
            //                                 nearbyData[i]['rating'].toString(),
            //                                 style: TextStyle(fontSize: 12),
            //                               ),
            //                               SizedBox(
            //                                 width: 10,
            //                               ),
            //                               Icon(
            //                                 Icons.alarm_rounded,
            //                                 size: 20,
            //                                 color: primaryColor,
            //                               ),
            //                               Text(
            //                                 nearbyData[i]["time"],
            //                                 style: TextStyle(fontSize: 12),
            //                               ),
            //                               SizedBox(
            //                                 width: 3,
            //                               )
            //                             ],
            //                           ),
            //                           Expanded(child: SizedBox()),
            //                           Row(
            //                             children: [
            //                               Container(
            //                                 decoration: BoxDecoration(
            //                                   color: lightgreyColor,
            //                                   borderRadius:
            //                                       BorderRadius.circular(20),
            //                                 ),
            //                                 padding: EdgeInsets.fromLTRB(
            //                                     15, 5, 15, 5),
            //                                 alignment: Alignment.center,
            //                                 child: Text(
            //                                   nearbyData[i]["detail"][0],
            //                                   style: TextStyle(
            //                                       color: Colors.grey[400],
            //                                       fontSize: 12),
            //                                 ),
            //                               ),
            //                               SizedBox(
            //                                 width: 10,
            //                               ),
            //                               Container(
            //                                 decoration: BoxDecoration(
            //                                   color: lightgreyColor,
            //                                   borderRadius:
            //                                       BorderRadius.circular(20),
            //                                 ),
            //                                 padding: EdgeInsets.fromLTRB(
            //                                     15, 5, 15, 5),
            //                                 alignment: Alignment.center,
            //                                 child: Text(
            //                                   nearbyData[i]["detail"][1],
            //                                   style: TextStyle(
            //                                       color: Colors.grey[400],
            //                                       fontSize: 12),
            //                                 ),
            //                               ),
            //                               SizedBox(
            //                                 width: 10,
            //                               ),
            //                               Container(
            //                                 decoration: BoxDecoration(
            //                                   color: lightgreyColor,
            //                                   borderRadius:
            //                                       BorderRadius.circular(20),
            //                                 ),
            //                                 padding: EdgeInsets.fromLTRB(
            //                                     15, 5, 15, 5),
            //                                 alignment: Alignment.center,
            //                                 child: Text(
            //                                   nearbyData[i]["detail"][2],
            //                                   style: TextStyle(
            //                                       color: Colors.grey[400],
            //                                       fontSize: 12),
            //                                 ),
            //                               ),
            //                               SizedBox(
            //                                 width: 10,
            //                               ),
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
          );
        })
            ],
          ),
        ),
      ),
    );
  }
}