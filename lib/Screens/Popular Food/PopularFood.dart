import 'package:flutter/material.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Styles/StyleConstants.dart';

class PopularFood extends StatefulWidget {
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: [
            GridView.count(
              // padding: const EdgeInsets.all(8),
              crossAxisSpacing: 2,
              primary: false,
              shrinkWrap: true,

              mainAxisSpacing: 1,
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              children: catData
                  .map(
                    (item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(item["image"]),
                                  fit: BoxFit.cover),
                            ),
                            child: Transform.translate(
                              offset: Offset(57, 74),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 78),
                                child: CircleAvatar(
                                  radius: 17,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: primaryColor,
                                    size: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            item["name"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                           
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "(23 Reviews)",
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 9,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}