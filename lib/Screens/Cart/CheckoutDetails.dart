import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Screens/Cart/MyCard.dart';
import 'package:food_app/Screens/Order/MyOrderScreen.dart';
import 'package:food_app/Screens/Order/RunningOrderScreen.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';
import 'package:food_app/custom_icons_icons.dart';

class CheckoutDetails extends StatefulWidget {
  @override
  _CheckoutDetailsState createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
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
          withSearchnBasket: true,
          title: "Checkout",
        ),
      ),
      body: Container(
        height: sizeHeight(context),
        child: Stack(
          children: [
            Padding(
              padding: paddingFromScreenBorder,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: sizeWidth(context) / 1.8,
                    child: Text(
                      "Order Will Be Delivered To",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: sizeHeight(context) / 6.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // For Home Card
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: sizeWidth(context) / 1.6,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 0,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Home",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone_in_talk,
                                            size: 17,
                                            color: lightColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "+00-555-555-1234",
                                            style: TextStyle(
                                              color: lightColor,
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            CustomIcons.address,
                                            size: 13,
                                            color: lightColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Container(
                                            width: sizeWidth(context) / 3.5,
                                            child: Text(
                                              "52 RiversSide St. Norcross GA 30092",
                                              style: TextStyle(
                                                color: lightColor,
                                                fontSize: 11,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                   Material(
                                    color: Colors.white,
                                                                      child: InkWell(
                                      borderRadius: BorderRadius.circular(500),
                              
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: ClipRRect(
               borderRadius: BorderRadius.circular(500),
                                                  // color: Colors.lightBlue

                                        child: Icon(
                                          Icons.edit_sharp,
                                          size: 20,
                                        ),
                                    ),
                                      ),
                                    onTap: (){
                                        Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyCardScreen()),
                              );
                                    },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        //For Office Card
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: sizeWidth(context) / 1.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    value: 1,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Office",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.phone_in_talk,
                                            size: 17,
                                            color: lightColor,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "+00-555-555-1234",
                                            style: TextStyle(
                                              color: lightColor,
                                              fontSize: 11,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            CustomIcons.address,
                                            size: 13,
                                            color: lightColor,
                                          ),
                                          SizedBox(
                                            width: 9,
                                          ),
                                          Container(
                                            width: sizeWidth(context) / 3.5,
                                            child: Text(
                                              "52 RiversSide St. Norcross GA 30092",
                                              style: TextStyle(
                                                color: lightColor,
                                                fontSize: 11,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Material(
                                    color: Colors.white,
                                                                      child: InkWell(
                                      borderRadius: BorderRadius.circular(500),
                              
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: ClipRRect(
               borderRadius: BorderRadius.circular(500),
                                                  // color: Colors.lightBlue

                                        child: Icon(
                                          Icons.edit_sharp,
                                          size: 20,
                                        ),
                                    ),
                                      ),
                                    onTap: (){
                                      print(" ds ");
                                    },
                                    ),
                                  )
                                
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment method",
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontSize: 15,
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
                        onPress: () {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RunningOrderScreen()),
                              );
                        },
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
