import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({ super.key });

  final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.amber];

  final List<Widget> myList = List.generate(100, (index) => Text(
    '${index + 1}',
    style: const TextStyle(
      fontSize: 12
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View',
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(children: myList)
      ),
    );
  }
}
