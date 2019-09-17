import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: Container(
              padding: EdgeInsets.only(top: 20.0),
              color: Colors.lightGreen,
              child: Text(
                'TravelTourGuide',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'VarelaRound',
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
