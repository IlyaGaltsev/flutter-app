import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/signin.dart';
import 'package:flutter_app/src/screens/signup.dart';
import 'package:flutter_app/src/screens/welcome.dart';

void main() {
  runApp(MaterialApp(
      title: 'RTChat',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/signin': (context) => const Signin(),
        '/signup': (context) => const Signup()
      }));
}
