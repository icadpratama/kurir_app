import 'package:flutter/material.dart';
import 'package:kurirapp/components/text_field_container.dart';
import 'package:kurirapp/constants.dart';
// import 'package:line_icons/line_icons.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType inputType;
  final ValueChanged<String> onChanged;
  final bool obscure;
  const RoundedInputField(
      {Key key,
      this.hintText,
      this.icon = Icons.phone,
      this.onChanged,
      this.obscure = true,
      this.inputType});

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: new Column(
        children: <Widget>[
          TextField(
            keyboardType: inputType,
            onChanged: onChanged,
            cursorColor: kPrimaryColor,
            obscureText: obscure,
            decoration: InputDecoration(
                icon: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
                hintText: hintText,
                border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
