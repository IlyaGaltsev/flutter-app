import 'package:flutter/material.dart';
import 'package:flutter_app/src/animations/SlideRightRoute.dart';
import 'package:flutter_app/src/config/color_constants.dart';
import 'package:flutter_app/src/screens/signin.dart';

final _formKey = GlobalKey<FormState>();

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                              child: Form(
                                key: _formKey,
                                child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      FractionallySizedBox(
                                        widthFactor: 1,
                                        child: Text('Sign up',
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
                                        child: Text('Create to your account',
                                            style: TextStyle(
                                              color: AppColors.subtitle,
                                              fontSize: 16,
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter something';
                                          }
                                          return null;
                                        },
                                        style:
                                            TextStyle(color: AppColors.title),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: AppColors.title),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 3,
                                                    color: AppColors.title)),
                                            hintText: "Enter your name",
                                            hintStyle: TextStyle(
                                                fontSize: 16.0,
                                                color: AppColors.title),
                                            prefixIcon: const Icon(
                                              Icons.text_fields,
                                              size: 28,
                                            ),
                                            prefixIconColor: AppColors.title),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter something';
                                          }
                                          return null;
                                        },
                                        style:
                                            TextStyle(color: AppColors.title),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: AppColors.title),
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
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter something';
                                          }
                                          return null;
                                        },
                                        style:
                                            TextStyle(color: AppColors.title),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: AppColors.title),
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
                                      SizedBox(
                                        height: 12,
                                      ),
                                      TextFormField(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Enter something';
                                          }
                                          return null;
                                        },
                                        style:
                                            TextStyle(color: AppColors.title),
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 3,
                                                  color: AppColors.title),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 3,
                                                    color: AppColors.title)),
                                            hintText: "Repeat your password",
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
                                            onPressed: () {
                                              print(_formKey.currentState);
                                              if (_formKey.currentState!
                                                  .validate()) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(const SnackBar(
                                                        content: Text(
                                                            "Ты кнш крут")));
                                              }
                                            },
                                            style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.black),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.primary),
                                                padding:
                                                    MaterialStateProperty.all<
                                                            EdgeInsets>(
                                                        const EdgeInsets.all(
                                                            14))),
                                            child: const Text(
                                              'CREATE ACCOUNT',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700),
                                            )),
                                      )
                                    ]),
                              )),
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
                          Navigator.push(
                              context,
                              SlideRightRoute(
                                  builder: (context) {
                                    return const Signin();
                                  },
                                  page: const Signin()));
                        },
                        child: const Text(
                          "Do you have account? Sign in",
                        ),
                      )
                    ]))));
  }
}
