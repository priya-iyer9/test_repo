// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            height: height * 0.2,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {},
                    child: _tile(
                      height,
                      width,
                      "Company Details",
                    )),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            height: height * 0.2,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: _tile(
                    height,
                    width,
                    "Contact Administration",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                ),
                _tile(
                  height,
                  width,
                  "Company Attendance Terms",
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.2,
          ),
          GestureDetector(
              onTap: () {
                // signOut(context);
              },
              child: _buttons(height, width, "Logout", Colors.red))
        ],
      ),
    );
  }

  Widget _buttons(height, width, String title, Color colour) {
    return Container(
      margin: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
      height: height * 0.07,
      width: width * 0.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Center(
          child: Text(
        // ignore: unnecessary_string_interpolations
        "$title",
        style: TextStyle(
          color: colour,
          fontSize: height * 0.025,
          fontWeight: FontWeight.w700,
        ),
      )),
    );
  }

  Widget _tile(height, width, String title) {
    return ListTile(
      tileColor: Colors.white,
      leading: Text(
        "$title",
        style: TextStyle(
          color: Colors.grey[700],
          fontWeight: FontWeight.w500,
          fontSize: height * 0.025,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: height * 0.03,
        color: Colors.grey[400],
      ),
    );
  }
}
