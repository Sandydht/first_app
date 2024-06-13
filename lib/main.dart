import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List Tile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
            ListTile(
              title: Text('Sandy Dwi Handoko Trapsilo'),
              subtitle: Text('This is subtitle'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}