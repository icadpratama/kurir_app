import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/login_screen.dart';
import 'package:kurirapp/Screens/Signup/signup_screen.dart';
import 'package:kurirapp/Screens/Welcome/components/background.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(40, 0, 0, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome to Kurir!",
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text(
                  "Are you ready to enjoy a whole new life without limits? Let's go!",
                  style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOG IN",
              textColor: Colors.white,
              borderColor: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "REGISTER",
              color: Colors.white,
              textColor: kPrimaryColor,
              borderColor: kPrimaryLight,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupScreen();
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Text(
                "By logging in or registering. I agree to our Terms of Services and Privacy Policy.",
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
          ]),
    );
  }
}
