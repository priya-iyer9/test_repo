import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final buttonLabel;

  final MainAxisAlignment mainAxisAlignment;

  const SimpleButton(
      {Key key, @required this.buttonLabel, @required this.mainAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        // ignore: deprecated_member_use
        FlatButton(
          padding: EdgeInsets.only(right: 62.0),
          onPressed: () {},
          child: Text(buttonLabel),
        ),
      ],
    );
  }
}
