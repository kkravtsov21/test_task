import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

// ignore: public_member_api_docs
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final Random _random = Random();
  Color _color = const Color.fromARGB(255, 5, 7, 154);
  int color = 254;
  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(color),
        _random.nextInt(color),
        _random.nextInt(color),
        _random.nextInt(color),
      );
    });
  }

  _MainState createState() => _MainState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cousine-Regular'),
      home: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              "Test task app",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
        body: InkWell(
          onTap: changeColor,
          child: Container(
            color: _color,
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Hey There",
                style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
