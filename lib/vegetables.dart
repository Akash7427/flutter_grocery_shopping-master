import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/onion.dart';
import 'package:flutter_grocery_shopping/bringels.dart';
import 'package:flutter_grocery_shopping/potato.dart';
import 'package:flutter_grocery_shopping/tomato.dart';
import 'package:flutter_grocery_shopping/pickels.dart';
import 'SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Vegetables(),
    );
  }
}

class Vegetables extends StatefulWidget {
  Vegetables({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VegetablesState createState() => _VegetablesState();
}

class _VegetablesState extends State<Vegetables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Onion()));
                          },
                          child: _buildFruitCard("Onion", "assets/onion.jpg",
                              "₹90", 0xffF7DFB9, 0XffFAF0DA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Potato()));
                          },
                          child: _buildFruitCard("Potato", "assets/potato.jpg",
                              "₹120", 0xffC4D4A3, 0XffE0E8CF),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pickels()));
                          },
                          child: _buildFruitCard(
                              "Pickels",
                              "assets/pickels.jpg",
                              "₹150",
                              0xffF6E475,
                              0XffF9EFB0),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 42.5 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xffECEDF1)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "A Spring surprise",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize:
                                            1.5 * SizeConfig.textMultiplier),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "40% OFF",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans-Bold',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize:
                                            2.5 * SizeConfig.textMultiplier),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border:
                                            Border.all(color: Colors.green)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "FOODLY SURPRISE",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'OpenSans',
                                            fontSize:
                                                1.7 * SizeConfig.textMultiplier,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Use the code above for Spring collection purchases",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OpenSans-Bold',
                                        fontSize:
                                            1.4 * SizeConfig.textMultiplier,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tomato()));
                          },
                          child: _buildFruitCard("Tomato", "assets/tomato.jpg",
                              "₹45", 0xffFFC498, 0XffFDDCC1),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bringels()));
                          },
                          child: _buildFruitCard(
                              "Bringels",
                              "assets/bringels.jpg",
                              "₹200",
                              0xffF0AEAF,
                              0XffF8C6CA),
                        ),
                        SizedBox(
                          height: 2 * SizeConfig.heightMultiplier,
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
    );
  }

  _buildFruitCard(
      String name, String asset, String rate, int color, int color2) {
    return Container(
      width: 42.5 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(color2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              asset,
              fit: BoxFit.contain,
              height: 30 * SizeConfig.imageSizeMultiplier,
              width: 30 * SizeConfig.imageSizeMultiplier,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              name,
              style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 2.5 * SizeConfig.textMultiplier),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Text(
              "Surat APMC Market",
              style: TextStyle(
                  fontFamily: 'OpenSans-Bold',
                  fontWeight: FontWeight.bold,
                  fontSize: 1.5 * SizeConfig.textMultiplier),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      rate,
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 2.5 * SizeConfig.textMultiplier),
                    ),
                    Text(
                      "Per ml",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.3 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "View Prices",
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 1.3 * SizeConfig.textMultiplier),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          )
        ],
      ),
    );
  }
}
