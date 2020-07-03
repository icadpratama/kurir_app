import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/components/body.dart';
import 'package:kurirapp/constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryBlack),
        title: const Text(
          'Enter Phone no.',
          style: TextStyle(color: kPrimaryBlack),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
