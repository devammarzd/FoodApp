import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class ChangeCard extends StatefulWidget {
  @override
  _ChangeCardState createState() => _ChangeCardState();
}

class _ChangeCardState extends State<ChangeCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: false,
          title: "Change Card",
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: sizeWidth(context),
              height: sizeHeight(context)-AppBar().preferredSize.height-20,
              child: Padding(
                padding: paddingFromScreenBorder,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/illustrations/Group 3832.png",
                      width: sizeWidth(context) / 1.2,
                      height: 260,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Dwayne Johnson",
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: primaryColor)
                                 ) ,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey[300])),
                      ),
                    ),
                       SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "0000-0000-0000",
                          focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: primaryColor)
                                 ) ,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey[300])),
                      ),
                    ),
                       SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "CVV",
                                 focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: primaryColor)
                                 ) ,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey[300])),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Expired Date",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: primaryColor)
                                 ) ,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.grey[300])),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                // SizedBox(height: 70,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: RaisedButton(onPressed: (){
                    
                  },
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(500),

                  ),
                  child: Container(
                    width: sizeWidth(context)/1.3,
                    height: 70,
                    alignment: Alignment.center,
                    child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  ),
                  ),
                 )
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
