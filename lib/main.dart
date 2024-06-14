import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field Decoration',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Text Field Decoration',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password...',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  print('click eye');
                },
                icon: Icon(Icons.remove_red_eye)
              )
            ),
          ),
        ),
      ),
    );
  }
}