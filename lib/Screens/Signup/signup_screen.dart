import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Signup/components/body.dart';
import 'package:kurirapp/constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryBlack),
        title: const Text(
          '',
          style: TextStyle(color: kPrimaryBlack),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
