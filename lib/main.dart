import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Ask me anything!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
        },
        child: Center(child: Image.asset('images/ball$ballNumber.png')),
      ),
    );
  }
}
