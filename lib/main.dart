import 'package:flutter/material.dart';
import 'package:flutter_tour_guide/ui/home/home.dart';
import 'package:flutter_tour_guide/ui/login/widgets/headerlogin.dart';
import 'package:flutter_tour_guide/ui/splash/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: '',
      ),
      home: SplashScreen(),
    );
  }
}

