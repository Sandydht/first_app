import 'package:first_app/pages/page_satu.dart';
import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Dua',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(PageSatu());
            },
            icon: Icon(Icons.navigate_before),
            color: Colors.white,
          ),
          title: Text(
            'Page Dua',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Text('Ini page 2'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop(PageSatu());
          },
          child: Icon(Icons.arrow_left)
        ),
      ),
    );
  }
}