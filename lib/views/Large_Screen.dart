import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app/views/Detail_Page.dart';
import 'package:flutter_responsive_web_app/views/Prfole_Screen.dart';

class LargeScreen extends StatefulWidget {
  LargeScreen({Key key}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.orange,
          Colors.brown,
        ])),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PK.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Row(
                    children: [
                      buildButton("about"),
                      buildButton("Work"),
                      buildButton("Contact"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child:ProfileScreen(),
                  ),
                  Expanded(
                    child: DetailPage(),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }

  buildButton(String text) {
    return Container(
      width: 150,
      height: 50,
      margin: EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
