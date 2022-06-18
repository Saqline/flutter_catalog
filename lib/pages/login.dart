// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            fontSize: 20,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
