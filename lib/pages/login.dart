// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('welcome',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter User Name',
                    labelText: 'User Name',
                  ),
              ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                  ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed:(){
                  print('Hi coder');
                }, 
              child: 
              Text('Log In'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Colors.lightBlue), //optional
              ),
              
              )
            ],
            ),
          )
          
        ],
      )
    );
  }
}
