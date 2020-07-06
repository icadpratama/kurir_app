import 'package:flutter/material.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/my_flutter_app_icons.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: TextField(
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
              prefixIcon: Material(
                  color: Colors.white,
                  // elevation: 2.0,
                  // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              suffixIcon: Material(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                color: kPrimaryColor,
                child: new IconButton(
                    icon: new Icon(
                      MyFlutterApp.params,
                      color: Colors.white,
                    ),
                    onPressed: null),
              ),
              border: InputBorder.none,
              hintText: "What would you like to eat?")),
    );
  }
}