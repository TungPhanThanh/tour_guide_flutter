import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() {
    // TODO: implement createState
    return _SettingState();
  }
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                color: Colors.green,
//                tooltip: 'back',
                onPressed: () {
                },
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size(20.0, 100.0),
              child: Column(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/travel.jpg'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'tungphanhunre@gmail.com',
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.4)),
                  ),
                  SizedBox(height: 10.0),
                ],
              ), // Add this code
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.green,
//              tooltip: 'back',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )),
      body: Container(
        color: Colors.black.withOpacity(0.1),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50.0),
            Container(
                color: Colors.white,
                height: 55.0,
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.indigo,
                            size: 25.0,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Connect Facebook',
                            style: TextStyle(
                                fontFamily: 'Cartoonist', fontSize: 20),
                          ),
                        ],
                      )),
                      Icon(
                        Icons.navigate_next,
                        color: Colors.black.withOpacity(0.4),
                        size: 30.0,
                      )
                    ],
                  ),
                )),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('LINKS',
                  style: TextStyle(
                    fontFamily: 'Cartoonist',
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.4),
                  )),
            ),
            SizedBox(height: 5.0),
            Column(
              children: <Widget>[
                Container(
                    color: Colors.white,
                    height: 55.0,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'About TourGuide',
                              style: TextStyle(
                                  fontFamily: 'Cartoonist', fontSize: 20),
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black.withOpacity(0.4),
                            size: 30.0,
                          )
                        ],
                      ),
                    )),
                Container(
                    color: Colors.white,
                    height: 55.0,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  fontFamily: 'Cartoonist', fontSize: 20),
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black.withOpacity(0.4),
                            size: 30.0,
                          )
                        ],
                      ),
                    )),
                Container(
                    color: Colors.white,
                    height: 55.0,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                  fontFamily: 'Cartoonist', fontSize: 20),
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.black.withOpacity(0.4),
                            size: 30.0,
                          )
                        ],
                      ),
                    )),
                Container(
                    color: Colors.white,
                    height: 55.0,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'App Version',
                              style: TextStyle(
                                  fontFamily: 'Cartoonist', fontSize: 20),
                            ),
                          ),
                          Text(
                            'v1.0.1(092019)',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: 25.0),
            Container(
                color: Colors.white,
                height: 55.0,
                child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text('Log Out',
                          style: TextStyle(
                              fontFamily: 'Cartoonist',
                              fontSize: 20,
                              color: Colors.red)),
                    ))),
          ],
        ),
      ),
    );
  }
}
