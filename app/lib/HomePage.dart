import 'dart:math';

import 'package:app/ResulteScreen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 160.0;
  final Color color = Colors.grey.withOpacity(0.7);
  final Color onCo = Colors.red;
  bool isMale = false;
  bool isFemale = false;
  int age = 18;
  int weight = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = !isMale;
                          isFemale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("images/male.png"),
                              height: 90,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: isMale ? onCo : color,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFemale = !isFemale;
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("images/female.png"),
                              height: 90,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isFemale ? onCo : color),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Slider(
                    inactiveColor: color,
                    value: height,
                    onChanged: (v) {
                      setState(() {
                        height = v;
                      });
                    },
                    max: 220,
                    min: 50,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                heroTag: 'age +',
                                mini: true,
                                backgroundColor: Colors.grey,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age -',

                                child: Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "weight",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                heroTag: 'weight +',

                                mini: true,
                                backgroundColor: Colors.grey,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'weight -',
                                child: Icon(Icons.remove),
                                mini: true,
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 60,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  var result = weight/pow(height/100,2);
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>ResultScreen(gender: isMale?"Male":"Female",age: age, result: result,)));
                });
              },
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
