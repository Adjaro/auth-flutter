import 'dart:async';

import 'package:auth/Screens/home/Home.dart';
import 'package:auth/utils/constants.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashFuturePage extends StatefulWidget {
  SplashFuturePage({Key? key}) : super(key: key);

  @override
  _SplashFuturePageState createState() => _SplashFuturePageState();
}

class _SplashFuturePageState extends State<SplashFuturePage> {
  @override
  void initState() {}

  Future<Widget> futureCall() async {
    return Future.value(new Home());
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/img/popcorn-3.png',
        fit: BoxFit.cover,
      ),
      title: Text(
        "Lorem",
        style: TextStyle(
          color: PrimaryColor,
          fontSize: 28,
          fontWeight: FontWeight.w900,
        ),
      ),
      backgroundColor: BackgroundColor,
      showLoader: true,
      loadingText: Text(
        "Chargement...",
        style: TextStyle(color: PrimaryColor),
      ),
      loaderColor: PrimaryColor,
      durationInSeconds: 5,
      navigator: Home(),
      //futureNavigator: futureCall(),
    );
  }
}
