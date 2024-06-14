import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? username;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penggunaan Text Field',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Penggunaan Text Field',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your username...',
                ),
                autocorrect: false,
                controller: TextEditingController(
                  text: username
                ),
                onChanged: (value) {
                  setState(() {
                    username = value;
                  });
                  print('onChanged: $username');
                },
                onSubmitted: (value) {
                  setState(() {
                    username = value;
                  });
                  print('onSubmitted: $username');
                },
              ),
              Text(
                username.toString()
              )
            ],
          )
        )
      ),
    );
  }
}