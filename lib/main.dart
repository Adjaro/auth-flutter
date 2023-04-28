import 'package:auth/Screens/splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashFuturePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
