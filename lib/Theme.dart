
import 'dart:async';

import 'package:flutter/material.dart';


 class ThemeChanger extends StatefulWidget {
   @override
   ThemeChangerState createState() {
     return new ThemeChangerState();
   }
 }

 class ThemeChangerState extends State<ThemeChanger> {
   bool darkTheme = false;
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Text("App"),
         ),
         body: Center(),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               ListTile(
                 title: Text("Dark Theme"),
                 trailing: Switch(
                   value: darkTheme,
                   onChanged: (changed) {
                     setState(() {
                       darkTheme = changed;
                     });
                   },
                 ),
               )
             ],
           ),
         ),
       ),
       theme: darkTheme ? ThemeData.dark() : ThemeData.light(),
     );
   }
 }