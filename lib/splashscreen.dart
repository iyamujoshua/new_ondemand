import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ondemand/onboarding/onboarding_one.dart';

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
          .pushReplacement(MaterialPageRoute(builder: (_) => onboarding1()));
    });

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Container(
          child: Image(image: AssetImage("asset/logo.png")),
        ),
      ),
    );
  }
}
