import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:first_app/models/http_provider.dart';
import 'package:first_app/pages/home_provider.dart';
// import 'package:first_app/pages/home_stateful.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => HttpProvider(),
        child: HomeProvider(),
      ),
    );
  }
}