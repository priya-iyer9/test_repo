// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class LogoLabel extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final logoText;

  const LogoLabel({Key key, @required this.logoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: Text(
            logoText,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
