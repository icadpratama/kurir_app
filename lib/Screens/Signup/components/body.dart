import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Signup/components/background.dart';
import 'package:kurirapp/components/round_input_field.dart';
import 'package:kurirapp/components/rounded_button.dart';
import 'package:kurirapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String username;
    String email;
    String phoneNumber;

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
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                      child: Image.asset(
                        "assets/images/ic_logo.png",
                        width: size.width * 0.3,
                      )),
                ),
                SizedBox(height: size.height * 0.03),
                RoundedInputField(
                    icon: Icons.people,
                    hintText: "Full Name",
                    obscure: false,
                    onChanged: (value) {
                      if (value.length < 1) {
                        print('Your name is empty');
                      } else {
                        username = value;
                      }
                    }),
                RoundedInputField(
                    icon: Icons.email,
                    inputType: TextInputType.emailAddress,
                    hintText: "Email",
                    obscure: false,
                    onChanged: (value) {
                      email = value;
                    }),
                RoundedInputField(
                    icon: Icons.phone,
                    inputType: TextInputType.phone,
                    hintText: "Phone Number",
                    obscure: false,
                    onChanged: (value) {
                      phoneNumber = value;
                    }),
                RoundedButton(
                    text: "SIGN UP",
                    textColor: Colors.white,
                    borderColor: kPrimaryColor,
                    press: () {
                      print(username);
                      print(email);
                      print(phoneNumber);
                    })
              ]),
        ),
      ),
    );
  }
}
