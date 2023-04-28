import 'package:auth/Screens/home/Home.dart';
import 'package:auth/Screens/signIn/OtpScreen.dart';
import 'package:auth/utils/constants.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);
  static String routeName = "/login";

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Padding(
              padding: EdgeInsets.all(3),
              child: ListView(
                children: <Widget>[
                  Form(
                      child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nom',
                              prefixIcon: Icon(Icons.person_outline),
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Prenom',
                              prefixIcon: Icon(Icons.person_outline),
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email_outlined),
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'SFUIDisplay'),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline),
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Container(
                        child: TextFormField(
                          obscureText: true,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Password confirmation',
                              prefixIcon: Icon(Icons.lock_outline),
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: MaterialButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: PrimaryColor,
                                title: Text(
                                    'Choisissez une option pour  verifier votre compte'),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: <Widget>[
                                      Divider(),
                                      GestureDetector(
                                        child: Text('Par email'),
                                        onTap: () {
                                          // Faites quelque chose avec Option 1
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Home()));
                                        },
                                      ),
                                      Padding(padding: EdgeInsets.all(8.0)),
                                      Divider(),
                                      GestureDetector(
                                        child: Text('Par Numero'),
                                        onTap: () {
                                          // Faites quelque chose avec Option 2
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      OptScreen()));
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }, //since this is only a UI app
                        child: Text(
                          'Valider',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: PrimaryColor,
                        elevation: 0,
                        minWidth: 400,
                        height: 50,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ])),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
