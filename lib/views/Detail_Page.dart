import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width * 0.60,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jatin\n Kumar",
            style: TextStyle(
              color: Colors.orange[200],
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Hello , i am Jatin Kumar ,Who are you ,tell me your Name,"
            "\nAnd  tell Me Your Address For the Contacts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  onSurface: Colors.red,
                ),
                onPressed: () {},
                child: Text("Resume"),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
                onPressed: () {},
                child: Text("Bloc"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
