import 'package:first_app/pages/home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme',
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.light,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // visualDensity: VisualDensity.comfortable,
        // visualDensity: VisualDensity.compact,
        // visualDensity: VisualDensity.standard,
        // visualDensity: VisualDensity(
        //   horizontal: 2, 
        //   vertical: 1
        // ),
        // primaryColor: Color(0xFF448AFF),
        // primarySwatch: MaterialColor(
        //   0xFF448AFF,
        //   <int, Color>{
            
        //   }
        // ),
      ),
    );
  }
}