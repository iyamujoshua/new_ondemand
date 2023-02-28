import 'package:flutter/material.dart';
import 'package:ondemand/auth/get_started.dart';
import 'package:ondemand/splashscreen.dart';
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
          Expanded(
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
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      // SvgPicture.asset(
                      //   contents[i].image,
                      //   height: 300,
                      // ),
                      Image.asset(
                          contents[i].image,
                          height: 400,
                        ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                       
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
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
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              child: Text(
                  currentIndex == contents.length - 1 ? "Continue" : "Continue",),
              onPressed: () {
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
              color: Colors.purple,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.purple,
      ),
    );
  }
}