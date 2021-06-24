import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app/views/Detail_Page.dart';
import 'package:flutter_responsive_web_app/views/Prfole_Screen.dart';

class SmallScreen extends StatefulWidget {
  SmallScreen({Key key}) : super(key: key);

  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.brown,
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.brown,
              ],
            ),
          ),
          child: ListView(
            children: [
              SizedBox(height: 30),
              buildButton("about"),
              SizedBox(height: 15),
              buildButton("Work"),
              SizedBox(height: 15),
              buildButton("Contact"),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.only(top: 40, left: 10, right: 10),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.brown,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "PK.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                ProfileScreen(),
                DetailPage(),
              ],
            ),
          ),
        ),
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
