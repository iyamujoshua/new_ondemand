import 'package:flutter/material.dart';

import '../../../utilities/Customebutton.dart';

class Previous extends StatefulWidget {
  const Previous({super.key});

  @override
  State<Previous> createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                elevation: 0,
                color: Color(0xffF4F4F4),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Electrical\nServices",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "Oct.  16. 2022",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Component fixing/changing",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Re-wiring",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: CustomeRaisedButton(
                                size: 15,
                                title: 'Share feedback',
                                onPress: () {
                                  // WelcomeDialog(context);
                                  // Navigator.pushNamed(context, '/ButtomNavigation');
                                }),
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: CustomeRaisedButton(
                                size: 15,
                                buttonColor: Color.fromARGB(50, 95, 19, 201),
                                titleColor: Color(0xff5F15CA),
                                title: 'View details',
                                onPress: () {
                                  // WelcomeDialog(context);
                                  // Navigator.pushNamed(context, '/ButtomNavigation');
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Color(0xffF4F4F4),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Plumbing\nServices",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "Oct.  16. 2022",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "General service",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: CustomeRaisedButton(
                                size: 15,
                                title: 'Share feedback',
                                onPress: () {
                                  // WelcomeDialog(context);
                                  // Navigator.pushNamed(context, '/ButtomNavigation');
                                }),
                          ),
                          Expanded(child: Container()),
                          SizedBox(
                            width: 100,
                            child: CustomeRaisedButton(
                                size: 15,
                                buttonColor: Color.fromARGB(50, 95, 19, 201),
                                titleColor: Color(0xff5F15CA),
                                title: 'View details',
                                onPress: () {
                                  // WelcomeDialog(context);
                                  // Navigator.pushNamed(context, '/ButtomNavigation');
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
