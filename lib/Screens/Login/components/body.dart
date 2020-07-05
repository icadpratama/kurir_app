import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Login/components/background.dart';
import 'package:kurirapp/Screens/Verify/verify_screen.dart';
import 'package:kurirapp/components/round_input_field.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';
import 'package:kurirapp/services/authservice.dart';
// import 'package:sms_autofill/sms_autofill.dart';

class Body extends StatelessWidget {
  String phoneNo, verificationId, smsCode;

  Body({Key key}) : super(key: key);

  final myController = TextEditingController();

  // @override
  // void dispose() {
  //   myController.dispose();
  // }

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
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          '''Please enter your phone number,\nyou will receive OTP soon.''',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: size.height * 0.08),
                  Container(
                    child: Image.asset(
                      "assets/icons/phone_icon.png",
                      width: size.width * 0.4,
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                  RoundedInputField(
                      controller: myController,
                      icon: Icons.phone,
                      inputType: TextInputType.phone,
                      hintText: "Phone Number",
                      obscure: false,
                      onChanged: (value) {
                        this.phoneNo = value;
                      }),
                  RoundedButton(
                    text: "CONTINUE",
                    textColor: Colors.white,
                    borderColor: kPrimaryColor,
                    press: () {
                      // verifyPhone(myController.text);
                      // final signCode = await SmsAutoFill().getAppSignature;

                      // tR2wmXEWarV
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return VerifyScreen();
                          },
                        ),
                      );
                    },
                  ),
                ])),
      ),
    );
  }

  Future<void> verifyPhone(phoneNo) async {
    final PhoneVerificationCompleted verified = (AuthCredential authResult) {
      AuthService().signIn(authResult);
    };

    final PhoneVerificationFailed failed = (AuthException exception) {
      print('${exception.message}');
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]) {
      this.verificationId = verId;
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verified,
        verificationFailed: failed,
        codeSent: smsSent,
        codeAutoRetrievalTimeout: autoTimeout);
  }
}
