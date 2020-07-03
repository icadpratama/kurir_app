import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/login_screen.dart';
import 'package:kurirapp/Screens/Welcome/components/background.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: new Image.asset('assets/images/splash_bg.png',
                    width: size.width * 0.5),
              ),
              SizedBox(height: size.height * 0.05),
              Center(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Welcome to Kurir!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Text(
                  "Are you ready to enjoy a whole new life without limits? Let's go!",
                ),
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
                        return;
                      },
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Text(
                  "By logging in or registering. I agree to our Terms of Services and Privacy Policy.",
                ),
              ),
            ]),
      ),
    );
  }
}
