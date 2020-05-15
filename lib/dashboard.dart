import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';
import 'package:flutter_grocery_shopping/dairy.dart';
import 'package:flutter_grocery_shopping/fruits.dart';
import 'package:flutter_grocery_shopping/nuts.dart';
import 'package:flutter_grocery_shopping/vegetables.dart';
import 'package:flutter_grocery_shopping/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Dashboard(),
            );
          },
        );
      },
    );
  }
}

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with SingleTickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
            child: Row(
              children: <Widget>[

                Icon(Icons.menu, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier,),
                Spacer(),
                Icon(Icons.shopping_cart, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier,)
              ],
            ),
          ),
          SizedBox(height: 5 * SizeConfig.heightMultiplier,),

          TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("Vegetables", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Dairy", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Nuts & Seeds", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Fruits", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
              ]),
          Expanded(
            child: Container(
              child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Vegetables(),
                    Dairy(),
                    Nuts(),
                    Fruits(),
                  ]),
            ),
          )
        ],
      ),

    );
  }
}