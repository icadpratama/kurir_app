import 'package:flutter/material.dart';
import 'package:kurirapp/Screens/Order/components/order_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      scrollDirection: Axis.vertical,
      children: <Widget>[Text("Your Order"), OrderCard()],
    );
  }
}
