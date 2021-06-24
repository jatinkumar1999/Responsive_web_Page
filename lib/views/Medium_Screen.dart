import 'package:flutter/material.dart';

class MediumScreen extends StatefulWidget {
  MediumScreen({Key key}) : super(key: key);

  @override
  _MediumScreenState createState() => _MediumScreenState();
}

class _MediumScreenState extends State<MediumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello , i am Jatin umar ,Who are you ,tell me your Name,And  tell Me Your Address For the Contacts"),
      ),
    );
  }
}
