import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/components/body.dart';
import 'package:kurirapp/constants.dart';

class HomepageScreen extends StatefulWidget {
  @override
  _HomepageScreenState createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          'Deliver to',
          style: TextStyle(color: kPrimaryDark),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
