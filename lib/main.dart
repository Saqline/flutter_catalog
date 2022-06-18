import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/home',
      routes: {
        '/':(context) => Login(),
        '/home':(context) => HomePage(),
        '/login':(context) => Login(),
      },
      
    );
  }
}
