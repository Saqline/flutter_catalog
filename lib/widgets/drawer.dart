// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://www.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_10421502.htm#query=man&position=0&from_view=keyword";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nur"),
                accountEmail: (Text('asfsg@gmail.com')),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
           
            // ignore: prefer_const_constructors
            ListTile(
              
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text('Home',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black
              ),),
            ),
             ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text('Profile',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black
              ),),
            ),
             ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.black,
              ),
              title: Text('Email',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
