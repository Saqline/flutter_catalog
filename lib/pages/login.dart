// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catalog/utills/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = '';
  bool changeButon = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    // if(_formKey.currentState.validate()){
       setState(() {
      changeButon = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButon = false;
    });

    // }
   
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'welcome $name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter User Name',
                          labelText: 'User Name',
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'user name can not be empty';
                        //   }
                        //   return null;
                        // },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          labelText: 'Password',
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Password can not be empty';
                        //   }
                        //   else if (value.length<6) {
                        //     return 'password will be atleast 6 digit';
                        //   }
                        //   return null;
                        // },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButon ? 8.0 : 50.0),
                        child: InkWell(
                          onTap: (() => moveToHome(context)),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButon ? 150 : 50,
                            height: 50,
                            alignment: Alignment.center,
                            // ignore: sort_child_properties_last
                            child: changeButon
                                ? Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  )
                                : Text(
                                    "Log In",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
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
        ));
  }
}
