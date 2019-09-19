import 'package:flutter/material.dart';
import 'package:flutter_tour_guide/ui/login/login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/plane.jpg'),
                    fit: BoxFit.fitHeight)),
          ),
          new Center(
              child: Column(
            children: <Widget>[
              SizedBox(height: 40.0),
              Text(
                'TravelTourGuide',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'VarelaRound',
                    color: Colors.white),
              ),
              SizedBox(height: 30.0),
              Text(
                'Make Every Day Feel Like \nYou\'re Traveling',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, fontFamily: 'ClassicCommic', color: Colors.white),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login())),
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.5),
                          border: Border.all(color: Colors.green.withOpacity(0.5)),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'ClassicCommic',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.5),
                          border: Border.all(color: Colors.green.withOpacity(0.5)),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        padding:
                            const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                        child: const Text(
                          'Let\'s Get Started!',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'ClassicCommic',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
