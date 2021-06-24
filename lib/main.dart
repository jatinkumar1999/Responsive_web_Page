import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app/views/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter DemApp for web ',
      theme: ThemeData(),
      home: Home(),
    );
  }
}
