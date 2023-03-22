import 'package:flutter/material.dart';
import 'package:ondemand/screens/auth/forgetPassword.dart';
import 'package:ondemand/screens/auth/login.dart';
import 'package:ondemand/screens/auth/signup.dart';
import 'package:ondemand/screens/bottom_navigation.dart';
import 'package:ondemand/screens/homepage/view.dart';
import 'package:ondemand/screens/homepage/view_all.dart';
import 'package:ondemand/screens/profile/profile.dart';
import 'package:ondemand/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: splashscreen(),
        routes: {
          '/signup': (context) => const signup(),
          '/Login': (context) => const Login(),
          '/ForgetPassword': (context) => const ForgetPassword(),
          
          '/ButtomNavigation': (context) => const ButtomNavigation(),
          '/view': (context) => const view(),
          '/profile': (context) => const profile(),
          // ButtomNavigation
          // ForgetPassword
        });
  }
}
