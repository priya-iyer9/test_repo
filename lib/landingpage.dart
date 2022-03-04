import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_widgets/CurvedButton.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          "Rite Infotech",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: MediaQuery.of(context).size.height / 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Icon(CupertinoIcons.profile_circled, color: Color(0xffff8c00)),
          ),
          SizedBox(width: 10.0),
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff2f3f7),
      body: ListView(
        children: [
          // SizedBox(height: 30.0),

          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListTile(
              title: Text(
                "Attendance Today",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 30,
                ),
              ),
              subtitle: Text(
                "Completed",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              tileColor: Colors.grey[200],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 20.0,
            ),
            child: ListTile(
              title: Text(
                "Attendance 24/10/2021",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 30,
                ),
              ),
              subtitle: Text(
                "Incomplete",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              tileColor: Colors.grey[200],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 20.0,
            ),
            child: ListTile(
              title: Text(
                "Attendance 25/10/2021",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 30,
                ),
              ),
              subtitle: Text(
                "Incomplete",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                ),
              ),
              tileColor: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
