import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Signup/components/body.dart';
import 'package:kurirapp/constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          '',
          style: TextStyle(color: kPrimaryDark),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
