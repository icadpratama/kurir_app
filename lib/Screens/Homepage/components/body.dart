import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/components/food_category.dart';
import 'package:kurirapp/Screens/Homepage/components/near_you.dart';
import 'package:kurirapp/Screens/Homepage/components/search_field.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, right: 12, bottom: 20),
            child: Theme(
                data:
                    Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: SearchField()),
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
          NearYou(),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Text(
              "Most Popular",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
          ),
          NearYou(),
        ],
      ),
    );
  }
}
