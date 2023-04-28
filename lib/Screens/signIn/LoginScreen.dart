import 'package:auth/Screens/app/HomeScreen.dart';
import 'package:auth/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/login";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/img/vegetables-1.jpg'),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Color(0xEA202020),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsets.all(23),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Login Page',
                            style: TextStyle(
                                color: PrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Column(
                            children: [
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelText: 'Email ou Mot de passe',
                                    hintText:
                                        "Veuillez préciser l'indicatif du pays pour un  numero",
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Mot de passe oublié?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      'Se Connecter',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    color: PrimaryColor,
                    elevation: 0,
                    minWidth: 350,
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Vous n'avez pas de compte ?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Créer un compte",
                            style: TextStyle(
                              color: PrimaryColor,
                              fontSize: 15,
                            ))
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
