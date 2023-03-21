// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/profile.dart';
import 'package:flutter_app/src/screens/signin.dart';
import 'package:flutter_app/src/screens/signup.dart';
import 'package:flutter_app/src/screens/welcome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      title: 'RTChat', debugShowCheckedModeBanner: false, home: MainPage()));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return (Center(child: CircularProgressIndicator()));
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something went'),
              );
            } else if (snapshot.hasData) {
              return Profile();
            } else {
              return Signin();
            }
          }));
}
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//       title: 'RTChat',
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const Welcome(),
//         '/signin': (context) => Signin(),
//         '/signup': (context) => const Signup()
//       }));
// }
