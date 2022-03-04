import 'package:attendanceapp/constants/AppConstants.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final double leftPadding;
  final double rightPadding;

  const PasswordField(
      {Key key, @required this.leftPadding, @required this.rightPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {},
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: mainColor,
          ),
          labelText: 'Password',
        ),
      ),
    );
  }
}
