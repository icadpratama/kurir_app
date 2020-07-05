import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/components/body.dart';
import 'package:kurirapp/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          'Enter Phone no.',
          style: TextStyle(color: kPrimaryDark),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
