import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Welcome/components/body.dart';
import 'package:kurirapp/constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Body(),
    );
  }
}
