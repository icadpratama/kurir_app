import 'package:flutter/material.dart';
import 'package:kurirapp/components/text_field_container.dart';
import 'package:kurirapp/constants.dart';
// import 'package:line_icons/line_icons.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField(
      {Key key, this.hintText, this.icon = Icons.phone, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.phone,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}