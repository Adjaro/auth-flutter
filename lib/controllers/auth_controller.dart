import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future loginUser() async {
    const url = 'https://127.0.0.1:8000/api/auth/login';

    var response = await http.post(Uri.parse(url),
        body: jsonEncode({
          "login_field": usernameController.text,
          "password": passwordController.text,
        }));
    if (response.statusCode == 200) {
      var loginArr = json.decode(response.body);
      // save this token in shared prefrences and make user logged in and navigate

      //print(loginArr['token']);
      print("loginArr['token']");
    } else {}
  }
}
