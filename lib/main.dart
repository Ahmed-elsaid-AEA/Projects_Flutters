import 'package:flutter/material.dart';
import 'package:m_projects/BMICalulator.dart';
import 'package:m_projects/Login_Screen.dart';
import 'package:m_projects/Messanger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: BMICalulator(),
      ),
    );
  }
}
