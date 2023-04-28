import 'dart:js';

import 'package:auth/Screens/app/HomeScreen.dart';
import 'package:auth/Screens/home/Home.dart';
import 'package:auth/Screens/signIn/InfoScreen.dart';
import 'package:auth/Screens/signIn/LoginScreen.dart';
import 'package:auth/Screens/signIn/OtpScreen.dart';
import 'package:auth/Screens/signIn/RegisterScreen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  // PaiementScreen.routeName:(context)=> PaiementScreen(),
  //Paiement.routeName:(context)=> Paiement(montant),
  Home.routeName: (context) => Home(),
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  InfoScreen.routeName: (context) => InfoScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  OptScreen.routeName: (context) => OptScreen()
};
