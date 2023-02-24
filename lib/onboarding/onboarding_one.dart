import 'package:flutter/material.dart';
import 'package:ondemand/onboarding/content_model.dart';
import 'package:ondemand/onboarding/onboarding_one.dart';
import 'package:ondemand/splashscreen.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({Key? key}) : super(key: key);

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: 400,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[i].title,
                          
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          contents[i].discription,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                }),
          ),
          // Container(
          //   height: 60,
          //   width: double.infinity,
          //   color: Colors.purple,
          //   margin: EdgeInsets.all(40),
          //   child: ElevatedButton(
          //     child: Text("Continue",
          //      style: TextStyle(color: Colors.white),
          //     ),
          //     onPressed: (){},

          //   ),
          // ),

          Container(
            child: new SizedBox(
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                child: Text(
                  'Continue',
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return splashscreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
