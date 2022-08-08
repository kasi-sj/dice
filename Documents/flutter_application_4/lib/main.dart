import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int no = 1;

  change() {
    setState(
      () {
        no = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 13, 2, 1),
          title: const Center(
            child: Text(
              'ASK ME ANYTHING',
              style: TextStyle(fontFamily: 'MouseMemoirs', fontSize: 20),
            ),
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 51, 52, 84),
          child: Center(
            child: Container(
              child: Expanded(
                child: TextButton(
                  onPressed: () {
                    change();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/ball$no.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
