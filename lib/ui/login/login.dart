import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.lightGreen[800],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 25.0),
            IconButton(
                alignment: Alignment.centerRight,
                icon: Icon(Icons.arrow_back),
                color: Colors.white.withOpacity(0.6),
                onPressed: () => Navigator.pop(context)),
            SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome Back',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Cartoonist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Let\'s get traveling!',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Cartoonist',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),
            Expanded(
                child: new Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: const EdgeInsets.only(bottom: 30.0),
                          child: Column(
                            verticalDirection: VerticalDirection.up,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => Login())),
                                child: Container(
                                    width: 250,
                                    decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(0.5),
                                      border: Border.all(
                                          color: Colors.green.withOpacity(0.5)),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 15.0,
                                    ),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          FontAwesomeIcons.facebookF,
                                          size: 14.0,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 10.0),
                                        Text(
                                          'Continue with Facebook',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontFamily: 'Cartoonist',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                ),
                              ),
                              SizedBox(height: 50.0),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 250,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
                                  child: new Text(
                                    'Log in',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: 'Cartoonist',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 250,
                                child: TextFormField(
                                  decoration: InputDecoration(hintText: 'Password'),
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Container(
                                width: 250,
                                child: TextFormField(
                                  decoration: InputDecoration(hintText: 'Email'),
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
