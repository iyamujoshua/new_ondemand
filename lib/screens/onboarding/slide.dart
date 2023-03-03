import 'package:flutter/material.dart';
import 'package:ondemand/screens/auth/get_started.dart';
// import 'package:ondemand/auth/get_started.dart';

import 'package:ondemand/splashscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../utilities/Customebutton.dart';
import 'content_model.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 600,
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Image.asset(
                        contents[i].image,
                        height: 400,
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                        // textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                        // textAlign: TextAlign.left,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => extended(),
                  ),
                );
              }
              _controller.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn,
              );
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF9D59FF), Color(0xFF560BC2)])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentIndex == contents.length - 1
                        ? "Continue"
                        : "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
        height: 10,
        width: currentIndex == index ? 35 : 10,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF9D59FF), Color(0xFF560BC2)]),
          color: currentIndex == index ? null : Color.fromARGB(49, 7, 17, 27),
        ));
  }
}
