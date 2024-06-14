import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: TextButton(
          child: Text('Go to gallery page'),
          onPressed: () => Navigator.of(context).pushNamed('/gallery'),
        )
      ),
    );
  }
}