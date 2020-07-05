import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Homepage/homepage_screen.dart';
import 'package:kurirapp/Screens/Signup/components/background.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: size.width * 60 / 100,
              minHeight: size.height * 80 / 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 40),
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
                  width: size.width * 0.4,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: PinFieldAutoFill(
                  codeLength: 6,
                  onCodeChanged: (val) {
                    if (val.length > 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomepageScreen();
                          },
                        ),
                      );
                    }
                  },
                  decoration: CirclePinDecoration(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      strokeColor: kPrimaryLight,
                      strokeWidth: 3,
                      enteredColor: kPrimaryColor),
                ),
              ),
              SizedBox(height: size.height * 0.04),
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
                        return HomepageScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
