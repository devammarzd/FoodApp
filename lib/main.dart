import 'package:flutter/material.dart';
import 'package:food_app/Data/CategorysData.dart';
import 'package:food_app/Styles/StyleConstants.dart';
import 'package:food_app/basket_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Mulish',
        primaryColor: primaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
                size: 19,
              ),
            ),
          ),
        ),
        title: Text(
          "Categories",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: Icon(
                Icons.search_rounded,
                size: 22,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              splashRadius: 25,
              icon: Icon(
                Basket.basket,
                size: 22,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListView.builder(
                itemCount: catData.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
               elevation: 5,
               shadowColor: Colors.blueGrey[50],

                        child: Container(

                      width: sizeWidth(context) / 1.3,
                      height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                   child: Padding(
                     padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                     child: Row(
                       children: [
                     Image.asset(catData[i]['image'],width:i==3?50: 60,height:i==3?80: 60,fit: BoxFit.fill,),
                     SizedBox(width: 25,),
                     Text(catData[i]['name'],maxLines: 1,style: TextStyle(
                       fontSize: 17,
                      fontWeight: FontWeight.w600,

                     ),)
,
Expanded(child: Container())
                       ],
                     ),
                   ),
                    )),
                  );
                })
          ],
        ),
      ),
    );
  }
}
