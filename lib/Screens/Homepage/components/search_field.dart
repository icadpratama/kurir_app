import 'package:flutter/material.dart';
import 'package:kurirapp/constants.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      child: TextField(
          style: TextStyle(color: Colors.black, fontSize: 16.0),
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 5.0, vertical: 14.0),
              prefixIcon: Material(
                  // elevation: 2.0,
                  // borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Icon(
                Icons.search,
                color: Colors.black,
              )),
              suffixIcon: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                color: kPrimaryColor,
                child: new IconButton(
                    icon: new Icon(
                      Icons.filter,
                      color: kPrimaryDark,
                    ),
                    onPressed: null),
              ),
              border: InputBorder.none,
              hintText: "Search Food")),
    );
  }
}
