import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/animations/SlideRightRoute.dart';
import 'package:flutter_app/src/config/color_constants.dart';
import 'package:flutter_app/src/screens/signup.dart';

class Signin extends StatefulWidget {
  @override
  _SigninWidgetState createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<Signin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundScaffold,
        body: SafeArea(
            child: FractionallySizedBox(
                heightFactor: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          AppBar(
                            backgroundColor: AppColors.backgroundScaffold,
                            shadowColor: Color.fromARGB(0, 0, 0, 0),
                            foregroundColor: AppColors.title,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 20),
                            child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FractionallySizedBox(
                                    widthFactor: 1,
                                    child: Text('Sign in',
                                        style: TextStyle(
                                          color: AppColors.title,
                                          fontSize: 28,
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 1,
                                    child: Text('Sign in to your account',
                                        style: TextStyle(
                                          color: AppColors.subtitle,
                                          fontSize: 16,
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    controller: emailController,
                                    textInputAction: TextInputAction.done,
                                    style: TextStyle(color: AppColors.title),
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 3, color: AppColors.title),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: AppColors.title)),
                                        hintText: "Enter your email",
                                        hintStyle: TextStyle(
                                            fontSize: 16.0,
                                            color: AppColors.title),
                                        prefixIcon: const Icon(
                                          Icons.alternate_email,
                                          size: 28,
                                        ),
                                        prefixIconColor: AppColors.title),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  TextFormField(
                                    // validator: (value) {
                                    //   if (value == null || value.isEmpty) {
                                    //     return 'Enter something';
                                    //   }
                                    //   return null;
                                    // },
                                    controller: passwordController,
                                    textInputAction: TextInputAction.done,
                                    style: TextStyle(color: AppColors.title),
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 3, color: AppColors.title),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3,
                                                color: AppColors.title)),
                                        hintText: "Enter your password",
                                        hintStyle: TextStyle(
                                            fontSize: 16.0,
                                            color: AppColors.title),
                                        prefixIcon: const Icon(
                                          Icons.password,
                                          size: 28,
                                        ),
                                        prefixIconColor: AppColors.title),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: 1,
                                    child: ElevatedButton(
                                        onPressed: signIn,
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all(
                                                    AppColors.black),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    AppColors.primary),
                                            padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                const EdgeInsets.all(14))),
                                        child: const Text(
                                          'SIGN IN',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        )),
                                  )
                                ]),
                          ),
                        ],
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(AppColors.subtitle),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const Signup();
                            },
                          ));
                        },
                        child: const Text(
                          "Don`t have account? Create account",
                        ),
                        // icon: const Icon(Icons.person_add),
                        // label: const Text('Sign Up'),
                      )
                    ]))));
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
