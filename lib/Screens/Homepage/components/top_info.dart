import 'package:flutter/material.dart';

class TopInfo extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 32, fontWeight: FontWeight.w800);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * 0.08),
            Text(
              "What would\nyou like to eat?",
              style: textStyle,
            ),
          ],
        ),
      ],
    );
  }
}
