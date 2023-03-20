import 'package:flutter/material.dart';
import 'package:flutter_app/src/animations/SlideRightRoute.dart';
import 'package:flutter_app/src/screens/signin.dart';
import 'package:flutter_app/src/screens/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 155, 188),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://img.freepik.com/premium-vector/electrical-outlet-and-plug-wall-socket-with-cable-vector-illustration-in-flat-style-eps-10_505557-1672.jpg"),
            SizedBox(
              height: 20,
            ),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
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
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        SlideRightRoute(
                            builder: (context) {
                              return const Signup();
                            },
                            page: const Signup()));
                  },
                  icon: const Icon(Icons.add_sharp),
                  label: const Text('Sign Up'),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
