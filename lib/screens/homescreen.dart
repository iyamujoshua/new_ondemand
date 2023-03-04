import 'package:flutter/material.dart';
import 'package:ondemand/screens/auth/signup.dart';
import 'package:ondemand/screens/card_slide.dart';
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
                    onTap: () {
                      // handle profile image click
                    },
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
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Container(
  width: 370,
  decoration: BoxDecoration(
    color: Color(0xffF4F4F4),
    borderRadius: BorderRadius.circular(12),
  ),
  padding: EdgeInsets.all(12),
  child: GestureDetector(
    onTap: () {
      // Handle the search bar click event
      print("Search bar clicked");
    },
    child: Row(
      children: [
        Icon(
          Icons.search,
          color: Colors.grey,
        ),
        Text(
          "Search for a service",
          style: TextStyle(color: Colors.grey),
        )
      ],
    ),
  ),
),




        SizedBox(
          height: 20,
        ),
      ],
    ),
  ),
);

  }
}