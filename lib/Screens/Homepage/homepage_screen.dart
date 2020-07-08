import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/components/body.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/my_flutter_app_icons.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          'Deliver to',
          style: TextStyle(color: kPrimaryDark),
        ),
        leading: Container(
          child: Tab(
            icon: Icon(MyFlutterApp.th_large),
          ),
        ),
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: const Icon(
                Icons.notifications,
                color: kPrimaryColor,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Body(),
    );
  }
}
