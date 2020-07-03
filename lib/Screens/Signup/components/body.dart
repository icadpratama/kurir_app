import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Signup/components/background.dart';
import 'package:kurirapp/components/round_input_field.dart';
import 'package:kurirapp/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedInputField(
                  icon: Icons.people,
                  hintText: "Your Name",
                  obscure: false,
                  onChanged: (value) {}),
              RoundedInputField(
                  icon: Icons.email,
                  inputType: TextInputType.emailAddress,
                  hintText: "Your Email",
                  obscure: false,
                  onChanged: (value) {}),
              RoundedInputField(
                  icon: Icons.phone,
                  inputType: TextInputType.phone,
                  hintText: "Your Phone Number",
                  obscure: false,
                  onChanged: (value) {}),
              RoundedInputField(
                  icon: Icons.lock,
                  hintText: "Your Password",
                  onChanged: (value) {}),
              RoundedButton(text: "SIGN UP", press: () {})
            ]),
      ),
    );
  }
}
