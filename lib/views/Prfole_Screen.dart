import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration:Duration(seconds: 1),
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width * 0.60,
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          "assets/ocean.jpg",
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
