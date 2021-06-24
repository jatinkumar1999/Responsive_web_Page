import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app/Responsive_Screen_Widget.dart';
import 'package:flutter_responsive_web_app/views/Large_Screen.dart';

import 'package:flutter_responsive_web_app/views/Small_Screen.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
