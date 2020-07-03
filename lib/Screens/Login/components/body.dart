import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/components/background.dart';
import 'package:kurirapp/components/round_input_field.dart';
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
                  '''Please enter your phone number,\nyou will receive OTP soon.''',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.08),
            Container(
              child: Image.asset(
                "assets/icons/phone_icon.png",
                width: size.width * 0.33,
              ),
            ),
            SizedBox(height: size.height * 0.08),
            RoundedInputField(
                icon: Icons.phone,
                inputType: TextInputType.phone,
                hintText: "Your Phone Number",
                onChanged: (value) {}),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "CONTINUE",
              textColor: Colors.white,
              borderColor: kPrimaryColor,
              press: () {},
            ),
          ])),
    );
  }
}
