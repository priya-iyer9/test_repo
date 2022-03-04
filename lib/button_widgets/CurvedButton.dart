import 'package:flutter/material.dart';
// ignore: unused_import

class CurvedButton extends StatelessWidget {
  final buttonLabel;
  final widthvalue;
  final onPressed;

  const CurvedButton(
      {Key key,
      @required this.buttonLabel,
      @required this.widthvalue,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 1.4 * (MediaQuery.of(context).size.height / 20),
            width: widthvalue * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
                onPressed: onPressed,
                child: Text(
                  buttonLabel,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: MediaQuery.of(context).size.height / 40,
                  ),
                )))
      ],
    );
  }
}
