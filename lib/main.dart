import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';
import 'package:flutter_grocery_shopping/profile.dart';
import 'package:flutter_grocery_shopping/search.dart';
import 'package:flutter_grocery_shopping/dashboard.dart';
import 'package:flutter_grocery_shopping/locatebar.dart';

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
              home: bottomNavigation(),
            );
          },
        );
      },
    );
  }
}

class bottomNavigation extends StatefulWidget {
  @override
  _bottomNavigationState createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int currentindex = 0;
  final List<Widget> children = [
    Dashboard(),
    Search(),
    LocateBar(),
    Profile(),
  ];
  void onTappedBar(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavDrawer(),
      body: children[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("Search"),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            title: new Text("Map"),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.perm_identity),
            title: new Text("Profile"),
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  NavDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                    ))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Locate'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
