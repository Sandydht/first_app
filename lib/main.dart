import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Text Field',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter your username'
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      ),
    );
  }
}