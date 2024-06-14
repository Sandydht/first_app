import 'package:first_app/pages/gallery_page.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/photo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/gallery': (context) => GalleryPage(),
        '/photo': (context) => PhotoPage()
      }
    );
  }
}