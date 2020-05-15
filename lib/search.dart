import 'package:flutter/material.dart';
import 'package:flutter_grocery_shopping/SizeConfig.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 40.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(color: Colors.grey, width: 0.5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Text("Search here", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 2.4 * SizeConfig.textMultiplier,
                    fontFamily: 'OpenSans'
                ),),
                Spacer(),
                Icon(Icons.search, color: Colors.black, size: 6 * SizeConfig.imageSizeMultiplier,)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
