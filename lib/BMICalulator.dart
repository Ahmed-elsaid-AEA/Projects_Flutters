import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_projects/BmiResultScreen.dart';

class BMICalulator extends StatefulWidget {
  const BMICalulator({super.key});

  @override
  State<BMICalulator> createState() => _BMICalulatorState();
}

class _BMICalulatorState extends State<BMICalulator> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  _BMICalulatorState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calulator")),
      backgroundColor: Color(0xff0B2447),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/images/female.png"),
                          width: 90,
                          height: 90,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: !isMale ? Colors.blue : Colors.grey[400],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/images/male.png"),
                          height: 90,
                          width: 90,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isMale ? Colors.blue : Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "${height.round()}",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "CM",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: height,
                  onChanged: (valueChanged) {
                    setState(() {
                      height = valueChanged;
                    });
                  },
                  max: 220,
                  min: 80,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
          ),
        )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$weight",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: "weight--",
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            mini: true, //to make it smaller
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            heroTag: "weight++",
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            mini: true, //to make it smaller
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$age",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            heroTag: "age--",
                            onPressed: () {
                              setState(() {
                                if (age > 0) age--;
                              });
                            },
                            mini: true, //to make it smaller
                            child: Icon(Icons.remove),
                          ),
                          FloatingActionButton(
                            heroTag: "age++",
                            onPressed: () {
                              setState(() {
                                if (age < 100) age++;
                              });
                            },
                            mini: true, //to make it smaller
                            child: Icon(Icons.add),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(
            onPressed: () {
              setState(() {
                var result = weight / pow(height / 100, 2);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BmiResultScreen(result: result,age: age,isMale: isMale,)));
              });
            },
            child: Text(
              "Calculate",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
