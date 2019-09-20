//import 'package:flutter/material.dart';
//
//class Setting extends StatefulWidget {
//  @override
//  _SettingState createState() {
//    // TODO: implement createState
//    return _SettingState();
//  }
//}
//
//class _SettingState extends State<Setting> {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      body: CustomScrollView(
//        slivers: <Widget>[
//          AppBar(),
//          SliverAppBar(
//            backgroundColor: Colors.white,
//            floating: true,
//            pinned: true,
//            snap: true,
//            actions: <Widget>[
//              Text(
//                'Edit',
//                style: TextStyle(color: Colors.green),
//              )
//            ],
//            leading: Row(
//              children: <Widget>[
//                IconButton(
//                  icon: const Icon(Icons.arrow_back),
//                  color: Colors.green,
//                  tooltip: 'back',
//                  onPressed: () {
//                    /* ... */
//                  },
//                ),
//                Text('a'),
//              ],
//            ),
////            bottom: PreferredSize(
////              preferredSize: Size(20.0, 150.0),
////              child: Column(
////                verticalDirection: VerticalDirection.up,
////                children: <Widget>[
////                  Text(
////                    'title',
////                    style: TextStyle(fontSize: 14),
////                  ),
////                  SizedBox(height: 20.0),
////                  CircleAvatar(
////                    radius: 40,
////                    backgroundImage: AssetImage('assets/images/travel.jpg'),
////                  ),
////                ],
////              ), // Add this code
////            ),
//            flexibleSpace: FlexibleSpaceBar(
//              centerTitle: true,
//              title: Center(
//                child: Column(
//                  verticalDirection: VerticalDirection.up,
//                  children: <Widget>[
//                    Text(
//                      'tungphanhunre@gmail.com',
//                      style: TextStyle(fontSize: 8.5, color: Colors.black.withOpacity(0.4)),
//                    ),
//                    SizedBox(height: 20.0),
//                    Container(
//                      height: 50,
//                      width: 50,
//                      child: CircleAvatar(
//                        radius: 40,
//                        backgroundImage: AssetImage('assets/images/travel.jpg'),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//            ),
//            expandedHeight: 250,
//          ),
//          SliverList(
//            delegate: SliverChildBuilderDelegate(
//              (context, index) => ListTile(title: Text('Item #$index')),
//              childCount: 1000,
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
