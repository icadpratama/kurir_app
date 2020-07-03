import 'package:flutter/material.dart';
import 'package:kurirapp/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      width: size.width * 0.8,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
