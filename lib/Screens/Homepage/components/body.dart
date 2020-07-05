import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/components/food_category.dart';
import 'package:kurirapp/Screens/Homepage/components/search_field.dart';
import 'package:kurirapp/Screens/Homepage/components/top_info.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
        children: <Widget>[
          TopInfo(),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 30, bottom: 20),
            child: SearchField(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
          ),
          FoodCategory(),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Text(
              "Near You",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Text(
              "Most Popular",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
