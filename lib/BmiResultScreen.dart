import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  BmiResultScreen({super.key,required this.result, required this.age, required this.isMale });
  final double result;
  final int age;
  final bool isMale;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Result"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Gender : ${isMale?'male':'female'}",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Result : ${result.round()}",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "Age : $age",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}


