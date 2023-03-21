import 'package:flutter/material.dart';
import 'package:flutter_app/src/animations/SlideRightRoute.dart';
import 'package:flutter_app/src/screens/signin.dart';
import 'package:flutter_app/src/screens/signup.dart';
import '../config/color_constants.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundScaffold,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://img.freepik.com/premium-vector/electrical-outlet-and-plug-wall-socket-with-cable-vector-illustration-in-flat-style-eps-10_505557-1672.jpg"),
            const SizedBox(
              height: 20,
            ),
            Text('Welcome to RTChat!',
                style: TextStyle(
                  color: AppColors.title,
                  fontSize: 28,
                )),
            Text('Login or create your account',
                style: TextStyle(
                  color: AppColors.subtitle,
                  fontSize: 16,
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primary),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.black),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin();
                      }));
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Login'),
                  ),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary),
                    foregroundColor: MaterialStateProperty.all(AppColors.black),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Signup();
                      },
                    ));
                  },
                  icon: const Icon(Icons.person_add),
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
