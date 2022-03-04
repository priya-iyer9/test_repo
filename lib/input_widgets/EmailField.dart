// ignore: file_names
import 'package:attendanceapp/constants/AppConstants.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final labelText;
  final double leftPadding;
  final double rightPadding;

  const EmailField(
      {Key key,
      @required this.labelText,
      @required this.leftPadding,
      @required this.rightPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        right: rightPadding,
      ),
      child: TextFormField(
        expands: false,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: mainColor,
            ),
            labelText: labelText),
      ),
    );
  }
}
