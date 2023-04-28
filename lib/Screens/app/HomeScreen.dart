import 'package:auth/Screens/app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xED202020),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 10.0),
            ListTile(
              title: Text('ID'),
              subtitle: Text('ID'),
            ),
            ListTile(
              title: Text('First Name'),
              subtitle: Text('ID'),
            ),
            ListTile(
              title: Text('Last Name'),
              subtitle: Text('ID'),
            ),
          ],
        ),
      ),
    );
  }
}
