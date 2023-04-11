import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ondemand/main.dart';
import 'package:ondemand/screens/auth/signup.dart';
import 'package:ondemand/screens/bottom_navigation.dart';
import 'package:ondemand/screens/card_slide.dart';
import 'package:ondemand/screens/services.dart';
import 'package:ondemand/screens/profile/profile.dart';

import 'homepageDetail.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundImage: AssetImage("asset/lol.png"),
                          radius: 24,
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome\nEzekiel,",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Text(
                          //   "Good evening",
                          //   style:
                          //       TextStyle(color: Color.fromARGB(255, 238, 157, 6)),
                          // )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xff5F15CA),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: ((context, index) {
                    return HompageDeatail();
                  })),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
