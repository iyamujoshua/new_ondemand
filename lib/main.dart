import 'package:flutter/material.dart';
import 'package:ondemand/screens/auth/Otp.dart';
import 'package:ondemand/screens/auth/changepassword.dart';
import 'package:ondemand/screens/auth/forgetPassnumber.dart';
import 'package:ondemand/screens/auth/login.dart';
import 'package:ondemand/screens/auth/signup.dart';
import 'package:ondemand/screens/booking/Tabs/upcoming/cancelbooking.dart';
import 'package:ondemand/screens/booking/Tabs/upcoming/viewdetail.dart';
import 'package:ondemand/screens/bottom_navigation.dart';
import 'package:ondemand/screens/chat/chat.dart';
import 'package:ondemand/screens/homepage/notification.dart';
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
          '/OtpPage': (context) => const OtpPage(),
          '/ChangePassword': (context) => const ChangePassword(),
          '/ButtomNavigation': (context) => const ButtomNavigation(),
          '/view': (context) => const view(),
          '/profile': (context) => const profile(),
          '/Viewall': (context) => const Viewall(),
          '/ViewDetails': (context) => const ViewDetails(),
          '/CancelBooking': (context) => const CancelBooking(),
          '/chatapp': (context) => const chatapp(),
          '/chatapp': (context) => const chatapp(),
          '/noti': (context) => const noti(),
          
          // CancelBooking
          // ViewDetails
        });
  }
}
