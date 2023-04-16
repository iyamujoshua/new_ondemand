import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/screens/homepage/homescreen.dart';

class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
// appBar: AppBar(
//   elevation: 0,
//   backgroundColor: Colors.white,
//   leading: Padding(
//     padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//     child: GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop();
//       },
//       child: Container(
//         width: 20,
//         height: 10,
//         decoration: BoxDecoration(
//             color: Color(0xffF4F4F4),
//             borderRadius: BorderRadius.circular(10)),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: SvgPicture.asset(
//             "asset/arrrow.svg",
//             width: 5,
//             height: 5,
//           ),
//         ),
//       ),
//     ),
//   ),
//   title: Padding(
//     padding: const EdgeInsets.only(left: 60),
//     child: Row(
//       children: [
//         Text(
//           "Notifications",
//           style: TextStyle(color: Colors.black),
//         ),
//         SizedBox(width: 10),
//         Container(
//          padding: const EdgeInsets.only(left: 60),
//           decoration: BoxDecoration(
//             // color: Colors.red,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Text(
//             "Clear all",
//             style: TextStyle(color: Colors.purple,
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// ),

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
          padding: const EdgeInsets.only(left: 60),
          child: Row(
            children: [
              Text(
                "Notifications",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 10),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[300],
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Text(
              //     "New",
              //     style: TextStyle(color: Colors.black),
              //   ),
              // ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print("object");
              // Handle "Clear All" button click here
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Text(
                "Clear All",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ),
          ),
        ],
      ),
      body:Container(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset("asset/notif.png"),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("What's new? Version 2.0. update"),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset("asset/payment.png"),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Payment Confirmed!"),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset("asset/message.png"),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("New Message!"),
            ),
          ],
        ),
      ),

      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset("asset/bmade.png"),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Booking Made!"),
            ),
          ],
        ),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset("asset/pcreated.png"),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Profile Created"),
            ),
          ],
        ),
      ),
    ],
  ),
)

      

    );
  }
}
