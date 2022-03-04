// ignore_for_file: prefer_const_constructors

import 'package:attendanceapp/landingpage.dart';
import 'package:attendanceapp/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bookattendance.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    Bookattendance(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff2f3f7),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc),
            label: 'History',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc_checkmark),
            label: 'Attendance',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
