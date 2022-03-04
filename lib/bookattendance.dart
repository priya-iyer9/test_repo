import 'package:attendanceapp/button_widgets/CurvedButton.dart';
import 'package:attendanceapp/button_widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Bookattendance extends StatefulWidget {
  const Bookattendance({Key key}) : super(key: key);

  @override
  _BookattendanceState createState() => _BookattendanceState();
}

class _BookattendanceState extends State<Bookattendance> {
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yMd');
    final String formatted = formatter.format(now);
    String status = "Pending";
    // ignore: avoid_print
    print(formatted); // something like 2013-04-20

    // ignore: prefer_const_constructors
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff2f3f7),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(
        children: [
          SizedBox(height: 200.0),
          // ignore: prefer_const_constructors
          Center(
            child: Text(status,
                style:
                    // ignore: prefer_const_constructors
                    TextStyle(
                        color: status == "Pending" ? Colors.blue : Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 30.0)),
          ),
          SizedBox(height: 30.0),
          // ignore: prefer_const_constructors
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_constructors
            children: [
              // ignore: prefer_const_constructors

              // ignore: prefer_const_constructors
              Text("Attendance Today: ",
                  style:
                      // ignore: prefer_const_constructors
                      TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 30.0)),
              Text(formatted.toString(),
                  style:
                      // ignore: prefer_const_constructors
                      TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0)),
              // ignore: prefer_const_constructors

              // ignore: missing_required_param
            ],
          ),
          SizedBox(height: 50.0),
          // SizedBox(height: 30.0),
          CurvedButton(
            widthvalue: 3,
            buttonLabel: "Book",
            onPressed: () {
              setState(() {
                status = "Booked";
              });
              // ignore: prefer_const_constructors
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Appointment booked for $formatted'),
                duration: const Duration(seconds: 1),
              ));
            },
          )
        ],
      ),
    );
  }
}
