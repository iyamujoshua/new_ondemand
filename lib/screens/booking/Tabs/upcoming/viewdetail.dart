import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utilities/Customebutton.dart';

class ViewDetails extends StatefulWidget {
  const ViewDetails({super.key});

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        primary: Colors.black);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              width: 20,
              height: 10,
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  "asset/arrrow.svg",
                  width: 5,
                  height: 5,
                ),
              ),
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Upcoming Booking",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20th\nOct. 2022",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: Color.fromARGB(49, 7, 17, 27),
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage("asset/Frame 105.png"),
                        width: 130,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "House & Office Cleaning",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
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
                                "Home Cleaning",
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
                                "2 rooms , 1 sitting room",
                                style: TextStyle(
                                    color: Color.fromARGB(119, 7, 17, 27),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Details",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Color(0xffF4F4F4),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Services",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "House & Office cleaning",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Option",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date & time",
                            style: TextStyle(
                                color: Color.fromARGB(119, 7, 17, 27),
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Expanded(child: Container()),
                          Text(
                            "Oct. 20, 2022. - 09:41 am",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Not paid",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Expanded(child: Container()),
                  Image(
                    image: AssetImage("asset/Help.png"),
                    width: 70,
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  // SizedBox(
                  //   width: 150,
                  //   child: CustomeRaisedButton(
                  //       size: 15,
                  //       buttonColor: Colors.black,
                  //       titleColor: Colors.white,
                  //       title: 'Cancel',
                  //       onPress: () {
                  //         // WelcomeDialog(context);
                  //         Navigator.pushNamed(context, '/ViewDetails');
                  //       }),
                  // ),
                  SizedBox(
                    width: 150,
                    height: 55,
                    child: ElevatedButton(
                      style: style,
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/CancelBooking');
                        // CancelBooking
                      },
                    ),
                  ),
                  Expanded(child: Container()),
                  SizedBox(
                    width: 150,
                    child: CustomeRaisedButton(
                        size: 15,
                        title: 'Reschedule',
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
    );
  }
}
