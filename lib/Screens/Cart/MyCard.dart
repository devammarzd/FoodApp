import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Screens/Cart/ChangeCardScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:food_app/custom_icons_icons.dart';

class MyCardScreen extends StatefulWidget {
  @override
  _MyCardScreenState createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {
    int _radioValue = 0;
  int _paymentRadioValue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  void _handlePaymentRadioValueChange(int value) {
    setState(() {
      _paymentRadioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: false,
          title: "My Card",
        ),
      ),
      body: Container(
        height: sizeHeight(context),
        child: Stack(
          children: [
            Padding(
              padding: paddingFromScreenBorder,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                         SizedBox(
                    height: 10,
                  ),
               Row(
                 children: [
                   Text("Edit card information",style: TextStyle(fontWeight: FontWeight.bold)),

                   IconButton(
                     splashRadius: 15,
                     padding: EdgeInsets.all(5),

                     icon: Icon(Icons.edit),iconSize: 18, onPressed:(){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangeCard()),
                              );
                     })
                 ],
               ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                                      child: Text(
                      "Change your card",
                      style: Theme.of(context).textTheme.headline1.copyWith(
                            fontSize: 15,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //have to discus whether to make it round or not.
                  //this contaienr is for Credit Card radio
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/illustrations/Group 111.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text("Credit Card"),
                            ],
                          ),
                        ),
                        Radio(
                          value: 0,
                          groupValue: _paymentRadioValue,
                          onChanged: _handlePaymentRadioValueChange,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //This contaienr is for paypal radio info
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/illustrations/paypal-icon.png",
                                width: 25,
                                height: 25,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text("Paypal"),
                            ],
                          ),
                        ),
                        Radio(
                          value: 1,
                          groupValue: _paymentRadioValue,
                          onChanged: _handlePaymentRadioValueChange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Checkout details here
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: sizeHeight(context) / 4,
                width: sizeWidth(context),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11, 10, 11, 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Charges"),
                          Text("\$0.00"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal"),
                          Text("\$90.00"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                          Text(
                            "\$90.00",
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      fontSize: 16,
                                    ),
                          ),
                        ],
                      ),
                      CustomLargeButton(
                        onPress: () {},
                        buttonText: "Checkout",
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}