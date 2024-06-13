import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Column',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: 200,
              height: 50,
              color: Colors.green,
            ),
            Container(
              // width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              // width: 100,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              // width: 300,
              height: 50,
              color: Colors.red,
            )
          ]
        ),
      ),
    );
  }
}
