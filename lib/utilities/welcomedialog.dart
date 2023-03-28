import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/bottom_navigation.dart';
import 'Customebutton.dart';

// import 'package:sway/_.dart';

Future<dynamic> WelcomeDialog(BuildContext context) {
  // Timer(Duration(seconds: 5), () {
  //   Navigator.of(context)
  //       .pushReplacement(MaterialPageRoute(builder: (_) => ButtomNavigation()));
  // });
  return showDialog(
      barrierColor: Colors.black,
      useRootNavigator: false,
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(""),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "asset/x.svg",
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage("asset/Emoji.png")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to Hiring Service!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  "Please complete your profile\nto start booking services",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomeRaisedButton(
                    size: 17,
                    title: 'Complete profile',
                    onPress: () {
                      // WelcomeDialog(context);
                      Navigator.pushNamed(context, '/ButtomNavigation');
                    }),
              ],
            ),
          ));
}
