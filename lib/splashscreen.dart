import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ondemand/screens/onboarding/slide.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:ondemand/onboarding/onboarding_one.dart';
// import 'package:ondemand/onboarding/slide.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Onbording()));
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 500,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF9D59FF), Color(0xFF560BC2)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "asset/HiringServices.svg",
                ),
                // Image(image: AssetImage("asset/HiringServices..png"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
