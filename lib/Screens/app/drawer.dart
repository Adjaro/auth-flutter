import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      backgroundColor: Color(0xED202020),
      child: SafeArea(
        // color: Colors.grey[50],
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                "Nom",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Nom",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // onTap: () {
              //   Navigator.of(context).popAndPushNamed("/myaccount");
              // },
            ),
            Divider(color: Colors.white),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: Colors.red,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
