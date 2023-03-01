import 'dart:ui';

import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ondemand/screens/auth/signup.dart';
// import 'package:ondemand/auth/signup.dart';
import 'package:ondemand/splashscreen.dart';

import '../../utilities/Customebutton.dart';

class extended extends StatefulWidget {
  const extended({super.key});

  @override
  State<extended> createState() => _extendedState();
}

class _extendedState extends State<extended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/Vector2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 80,
              child: SvgPicture.asset(
                "asset/HiringServices.svg",
              ),
            ),
            Positioned(
              top: 155,
              left: 110,
              child: Text(
                "Connecting you to services.",
                style: TextStyle(color: Colors.white),
              ),
            )
            // asset\HiringServices.svg
          ]),
          SizedBox(
            height: 50,
          ),
          Text(
            "Get started",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomeRaisedButton(
              size: 17,
              title: 'Create an account',
              onPress: () {
                Navigator.pushNamed(context, '/signup');
              }),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => {
              // '/Login'
              Navigator.pushNamed(context, '/Login')
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                color: Color.fromARGB(17, 95, 19, 201),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFF5F15CA),
                  fontSize: 17,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                indent: 30,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('or',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                  child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                endIndent: 30,
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(111, 158, 158, 158)),
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.transparent,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("asset/google.png"),
                    SizedBox(width: 8),
                    Text('Continue with Google',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text("         "),
                    Text("")
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Color.fromARGB(111, 158, 158, 158)),
                  borderRadius: BorderRadius.circular(50)),
              color: Colors.transparent,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("asset/facebook.png"),
                    Text('Continue with Facebook',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                    Text("       ")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
