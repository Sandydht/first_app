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
            'Image Widget',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Container(
            width: 350,
            color: Colors.amber,
            child: const Image(
              image: AssetImage('assets/img/laptop.jpg')
            ),
          ),
        )
      ),
    );
  }
}