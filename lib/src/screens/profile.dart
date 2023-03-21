import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/animations/SlideRightRoute.dart';
import 'package:flutter_app/src/config/color_constants.dart';
import 'package:flutter_app/src/screens/signin.dart';

final _formKey = GlobalKey<FormState>();

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        backgroundColor: AppColors.backgroundScaffold,
        body: SafeArea(
            child: FractionallySizedBox(
                heightFactor: 1,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(user.email!),
                      ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          child: Text("SignOut"))
                    ]))));
  }
}
