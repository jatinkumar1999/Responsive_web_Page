import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class CircelNavifgation extends StatefulWidget {
  CircelNavifgation({Key  key}) : super(key: key);

  @override
  _CircelNavifgationState createState() => _CircelNavifgationState();
}

class _CircelNavifgationState extends State<CircelNavifgation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        animationDuration: Duration(milliseconds: 250),
        animationCurve: Curves.easeIn,
        height: 50,
        items: [
          Icon(Icons.search),
          Icon(Icons.home),
          Icon(Icons.add),
          Icon(Icons.favorite),
        ],
        onTap: (index) {
          print("You Current index is $index");
        },
      ),
    );
  }
}