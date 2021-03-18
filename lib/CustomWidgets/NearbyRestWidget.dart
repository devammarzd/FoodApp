import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/RestProfile.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class NearbyRestWidget extends StatelessWidget {
  String image;
  String name;
  String rating;
  String time;
  List<String> details = [];

  NearbyRestWidget(
      {@required this.name,
      @required this.image,
      @required this.rating,
      @required this.time,
      @required this.details});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270*resizeFactor(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RestProfileScreen()),
              );
            },
            child: Container(
              width: sizeWidth(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: sizeWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            image,
                            height: 150,
                            width: sizeWidth(context),
                            fit: BoxFit.fill,
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
                                Icons.bookmark,
                                color: primaryColor,
                                size: 20,
                              ),
                            )),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    color: primaryColor),
                                child: Text(
                                  "Free Delivery",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )))
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
                            // width: sizeWidth(context),
                            child: Text(name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                          ),
                          Expanded(child: SizedBox()),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: starColor,
                                size: 20,
                              ),
                              Text(
                                rating,
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.alarm_rounded,
                                size: 20,
                                color: primaryColor,
                              ),
                              Text(
                                time,
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 3,
                              )
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: lightgreyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                alignment: Alignment.center,
                                child: Text(
                                  details[0],
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: lightgreyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                alignment: Alignment.center,
                                child: Text(
                                  details[1],
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: lightgreyColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                                alignment: Alignment.center,
                                child: Text(
                                  details[2],
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
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
        ),
      ),
    );
  }
}
