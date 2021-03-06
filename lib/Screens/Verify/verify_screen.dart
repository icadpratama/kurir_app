import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Verify/components/body.dart';
import 'package:kurirapp/constants.dart';
// import 'package:sms_autofill/sms_autofill.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryDark),
        title: const Text(
          'Enter OTP',
          style: TextStyle(color: kPrimaryDark),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }

  // void _listenOtp() async {
  //   await SmsAutoFill().listenForCode;
  // }
}
