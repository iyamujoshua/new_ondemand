import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/main.dart';

import '../../utilities/Customebutton.dart';

class bsummary extends StatefulWidget {
  const bsummary({super.key});

  @override
  State<bsummary> createState() => _bsummaryState();
}

class _bsummaryState extends State<bsummary> {
  String _selectedItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/homeclean.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 20),
                child: Text(
                  "Booking Summary",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        "asset/arrrow.svg",
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                child: Image.asset("asset/verified.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Booking successful!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We’ll get in touch with you to make payment",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "and get your service delivered",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
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
                                        "Services",
                                      ),
                                      Expanded(child: Container()),
                                      Text(
                                        "House & Office cleaning",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(119, 7, 17, 27),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),

                                      //           Text(
                                      //   "Home",
                                      //   style: TextStyle(
                                      //       color: Color.fromARGB(119, 7, 17, 27),
                                      //       fontSize: 15,
                                      //       fontWeight: FontWeight.w500),
                                      // ),

                                      //                   Text(
                                      //   "Oct. 20, 2022. - 09:41 am",
                                      //   style: TextStyle(
                                      //       color: Color.fromARGB(119, 7, 17, 27),
                                      //       fontSize: 15,
                                      //       fontWeight: FontWeight.w500),
                                      // ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Option",
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            "Home",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    119, 7, 17, 27),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Date & time",
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            "Oct. 20, 2022. - 09:41 am",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    119, 7, 17, 27),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                                    children: [
                                      SizedBox(
                                        width: 150,
                                        child: CustomeRaisedButton(
                                            size: 15,
                                            title: 'Edit Details',
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
                                            buttonColor:
                                                Color.fromARGB(50, 95, 19, 201),
                                            titleColor: Color(0xff5F15CA),
                                            title: 'View Bookings',
                                            onPress: () {
                                              // WelcomeDialog(context);
                                              Navigator.pushNamed(
                                                  context, '/ViewDetails');
                                            }),
                                      ),
                                    ],
                                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
