import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/signin.dart';
import 'package:flutter_app/src/screens/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to RTChat!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                )),
            const Text('Login or create your account',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                )),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Signin();
                          }));
                        },
                        icon: const Icon(Icons.login),
                        label: const Text('Login'),
                      ),
                    ),
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Signup();
                        }));
                      },
                      icon: const Icon(Icons.add_sharp),
                      label: const Text('Sign Up'),
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
