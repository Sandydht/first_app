import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Grid View',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
        body: GridView(
            padding: EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
            ),
            children: myList
        ),
      ),
    );
  }
}