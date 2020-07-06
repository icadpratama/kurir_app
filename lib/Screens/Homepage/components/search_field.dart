import 'package:flutter/material.dart';
import 'package:kurirapp/components/rectangle_button.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/my_flutter_app_icons.dart';

class SearchField extends StatelessWidget {
  _showModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 16, 0, 0),
                      child: Text(
                        "Filter Your Search",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Prize",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                        child: RectangleButton(
                          text: "\$",
                          textColor: kPrimaryDark,
                          borderColor: kPrimaryLight,
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Rating",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: RectangleButton(
                        text: "1",
                        textColor: kPrimaryDark,
                        borderColor: kPrimaryLight,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        "Types",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: RectangleButton(
                        text: "Fast Food",
                        textColor: kPrimaryDark,
                        borderColor: kPrimaryLight,
                        press: () {
                          print("Fast Food");
                        },
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Material(
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
                        onPressed: () {
                          _showModalBottomSheet(context);
                        }),
                  ),
                  border: InputBorder.none,
                  hintText: "What would you like to eat?")),
        )
      ],
    );
  }
}
