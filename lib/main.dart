import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          leadingWidth: 44,
          title: Text(
            'App Bar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            Container(
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(
              child: Icon(Icons.add),
            ),
          ),
          flexibleSpace: Container(
            height: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}