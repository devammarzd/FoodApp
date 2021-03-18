import 'package:flutter/material.dart';
import 'package:food_app/CustomWidgets/CusAppBar.dart';
import 'package:food_app/Data/SearchData.dart';
import 'package:food_app/Screens/Cart/CheckoutDetails.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class CartCheckoutScreen extends StatefulWidget {
  @override
  _CartCheckoutScreenState createState() => _CartCheckoutScreenState();
}

class _CartCheckoutScreenState extends State<CartCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size(AppBar().preferredSize.width, AppBar().preferredSize.height),
        child: CusAppBar(
          withSearchnBasket: true,
          title: "Cart",
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
                        child: Column(
              children: [
                Padding(
                  padding: paddingFromScreenBorder,
                  child: Container(
                   
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: searchData.length,
                      separatorBuilder: (context,i){
                        return SizedBox(height: 20,);
                      },
                      itemBuilder: (context, i) {
                        return Material(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                      
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            
                            width: sizeWidth(context),
                           height:120*resizeFactor(context),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    searchData[i]["image"],
                                    height:120*resizeFactor(context),
                                    width:120*resizeFactor(context),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                
                                Expanded(
                                                                child: Padding(
                                    padding: const EdgeInsets.fromLTRB(8.0,5,8,5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                    
                                          child: Text(
                                           searchData[i]["name"],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                        searchData[i]["desc"],
                                          style:
                                              Theme.of(context).textTheme.headline3,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Expanded(child:SizedBox()),
                                        Container(
                                        
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                searchData[i]["price"],
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                              ),
                                              Container(
                                               padding: EdgeInsets.fromLTRB(8,5, 8, 5),
                                               width: 90,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Row(
                                          
                                                  children: [
                                                    Icon(
                                                        Icons.remove,
                                                        color: Colors.white,
                                                      ),
                                                    SizedBox(),
                                                    Expanded(
                                                                                                        child: Container(
                                                                                                          alignment: Alignment.center,
                                                        child: Text(
                                                            searchData[i]["qty"],
                                                            
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.w600,
                                                              color: Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                               SizedBox(),
                                                    Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
             SizedBox(height:   sizeHeight(context) / 4.2,),
               SizedBox(height:  15,)
              ],
            ),
          ),
             //Checkout details here
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: sizeHeight(context) / 4.2,
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
                              Container(
                                width: sizeWidth(context) / 3,
                                child: Text(
                                  "${searchData.length} Selected Food Items",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Container(
                                width: sizeWidth(context) / 3,
                                child: Text(
                                  "Total Amount: \$90.00",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CustomLargeButton(
                            onPress: () {
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CheckoutDetails()),
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
    );
  }
}
