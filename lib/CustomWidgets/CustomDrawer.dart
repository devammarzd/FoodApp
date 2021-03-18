import 'package:flutter/material.dart';
import 'package:food_app/Screens/Cart/CartCheckout.dart';
import 'package:food_app/Screens/Cart/MyCard.dart';
import 'package:food_app/Screens/CategoriesScreens/CategoryListScreen.dart';
import 'package:food_app/Screens/ProfileScreens/ProfileScree.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/Styles/Styles.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
      child: SizedBox(
        width: sizeWidth(context) / 1.3,
        child: Drawer(
          child: ListView(
            children: [
                            SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: (){
                    Navigator.pop(context);
                  },
                                  child: Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                                      child: InkWell(
                        child: Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                  color: lightColor,
            )
                          ),
                          padding: EdgeInsets.all(2),
                          child: Icon(Icons.close,color: Colors.black,size: 20,),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/profilepic.jpg",
                          width: 60,
                          height: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dwayne Johnson",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "@dwaynejohnson",
                              maxLines: 1,

                              style: TextStyle(color: lightColor, fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
                    SizedBox(height: 15,),
                    ListTile(
                      onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()),
                              );
                      },
                      title: Text("Profile"),
                      subtitle: Text("See my profile",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      ),
                    ),
                       ListTile(
                      onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen()),
                              );
                      },
                      title: Text("Categories"),
                      subtitle: Text("See category items",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      ),
                    ),
                       ListTile(
                      onTap: (){
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartCheckoutScreen()),
                              );
                      },
                      title: Text("Cart"),
                      subtitle: Text("See my cart items",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      ),
                    ),
                       ListTile(
                      onTap: (){
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyCardScreen()),
                              );
                      },
                      title: Text("Payment Card"),
                      subtitle: Text("See my payment card option",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      ),
                    ),
                       ListTile(
                      onTap: (){
                        
                      },
                      title: Text("Push Notifications"),
                      subtitle: Text("Set up push notifications",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          // height: 20,
                          // width: 20,
                          child: Switch(value: true, onChanged:(val){

                        }))
                      ),
                    ),
                       ListTile(
                      onTap: (){
                        
                      },
                      title: Text("Logout"),
                      subtitle: Text("log out my account",style: TextStyle(color: lightColor,fontSize: 12),),
                      trailing: Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.logout,color: Colors.black,),
                      ),
                    )
             
            ],
          ),
        ),
      ),
    );
  }
}
