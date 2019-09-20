import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'hometab/discover.dart';
import 'hometab/explore.dart';
import 'hometab/plan.dart';

class HomePage extends StatefulWidget {
  static final String path = "lib/ui/home/home.dart";

  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
  void initState() {
    _children.add(DiscoverTab());
    _children.add(ExploreTab());
    _children.add(PlanTab());
//    _children.add(ExploreTab());

    _appBars.add(null);
    _appBars.add(_buildAppBarOne("Your Cart"));
    _appBars.add(_buildAppBarOne("Your Wishlist"));
//    _appBars.add(_buildAppBarOne("You"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: _appBars[_currentIndex],
        body: _children[_currentIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(vertical: 0),
          height: 50,
          child: _buildBottomNavigationBar(),
        ));
  }

  Widget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90.0),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            child: Card(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      hintText: "Search products",
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search))),
                ),
              ),
            ),
          ),
          leading: Image.asset('assets/grocery/delivery.png'),
        ),
      ),
    );
  }

  Widget _buildAppBarOne(String title) {
    return AppBar(
      bottom: PreferredSize(
          child: Container(
            color: Colors.grey.shade200,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0)),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: TextStyle(color: Colors.black)),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      iconSize: 18,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text(
              "Discover",
              style: TextStyle(fontSize: 14, fontFamily: 'Cartoonist'),
            )),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.safari),
            title: Text(
              "Explore",
              style: TextStyle(fontSize: 14, fontFamily: 'Cartoonist'),
            )),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.calendarAlt),
            title: Text(
              "Plan",
              style: TextStyle(fontSize: 14, fontFamily: 'Cartoonist'),
            )),
//        BottomNavigationBarItem(
//            icon: Icon(Icons.person_outline),
//            title: Text("You", style: TextStyle(fontSize: 14, fontFamily: 'Cartoonist'),)),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
