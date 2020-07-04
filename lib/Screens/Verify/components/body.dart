import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Signup/components/background.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Text(
                '''OTP will read automatically''',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.08),
          Container(
            child: Image.asset(
              "assets/icons/lock_icon.png",
              width: size.width * 0.33,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            text: "VERIFY",
            color: kPrimaryGreen,
            textColor: Colors.white,
            borderColor: kPrimaryGreen,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    // return VerifyScreen();
                  },
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
