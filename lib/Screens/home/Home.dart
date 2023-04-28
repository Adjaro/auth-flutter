import 'package:auth/Screens/signIn/LoginScreen.dart';
import 'package:auth/Screens/signIn/RegisterScreen.dart';
import 'package:auth/utils/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/vegetables-3.jpg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 270),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Lorem ipsum\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500)),
                        TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet,  nsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w200))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()),
                                (Route<dynamic> route) => true,
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 25),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 26, vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: PrimaryColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Inscription",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.app_registration,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 25),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 26, vertical: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: PrimaryColor,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "se connecter",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.login,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
