import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/Customebutton.dart';

class chatapp extends StatefulWidget {
  const chatapp({super.key});

  @override
  State<chatapp> createState() => _chatappState();
}

class _chatappState extends State<chatapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              // Container(
              //   width: double.infinity,
              //   height: 380,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('asset/homeclean.png'),
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 50,),

              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).pop();
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 50, left: 20),
              //     child: Container(
              //       width: 50,
              //       height: 50,
              //       decoration: BoxDecoration(
              //           color: Color(0xffF4F4F4),
              //           borderRadius: BorderRadius.circular(10)),
              //       child: Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: SvgPicture.asset(
              //           "asset/arrrow.svg",
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ]),
            SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                child: Image.asset("asset/Headphone.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Our Service",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                            Text(
                    "Responder chat",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Get in touch with us with our live chat to",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "get payment links and service",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500), 
                  ),
                                Text(
                    "provider details",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  
                  
                  SizedBox(
                    height: 15,
                  ),
                   CustomeRaisedButton(
                  size: 17,
                  title: 'Start Chat',
                  onPress: () {
                    Navigator.pushNamed(context, '/ButtomNavigation');
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
