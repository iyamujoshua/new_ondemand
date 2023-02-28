import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ondemand/auth/signup.dart';
import 'package:ondemand/splashscreen.dart';

class extended extends StatefulWidget {
  const extended({super.key});

  @override
  State<extended> createState() => _extendedState();
}

class _extendedState extends State<extended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(10)),
                color: Color(0xff9D59FF),
                gradient: LinearGradient(
                  colors: [Color(0xff560BC2), (Colors.purple)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.all(20),
                      child: Image.asset("asset/logo.png"),
                      height: 150,
                      width: 150,

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),

            Container(
              child: Center(
                child: Text(
                  "Get started",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return signup();
                    },
                  ),
                )
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(Color(0xff9D59FF)), (
                      Color(0xff560BC2))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return splashscreen();
                    },
                  ),
                )
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      (Color.fromARGB(255, 233, 232, 232)),
                      (Color.fromARGB(255, 233, 232, 232))
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),

            // Container(
            //   child: Text(
            //     "or",
            //     style: TextStyle(
            //       fontSize: 20,
            //     ),
            //   ),
            // ),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Expanded(child: Divider(color: Colors.grey, height: 1, thickness: 1,indent:30 ,)),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text('or', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ),
    Expanded(child: Divider(color: Colors.grey, height: 1, thickness: 1, endIndent: 30,)),
  ],
),





            SizedBox(
              height: 20,
            ),


SizedBox(
  width: 350,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(width: 2, color: Colors.grey),
      ),
      padding: EdgeInsets.all(12),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     Image.asset("asset/google.png"),
        SizedBox(width: 8),
        Text('continue with Google', style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    ),
  ),
),






SizedBox(height: 20,),

SizedBox(
  width: 350,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(width: 2, color: Colors.grey),
      ),
      padding: EdgeInsets.all(12),
    ),
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
     Image.asset("asset/facebook.png"),
        SizedBox(width: 8),
        Text('continue with Facebook', style: TextStyle(fontSize: 15, color: Colors.black)),
      ],
    ),
  ),
)











            

            //           TextButton.icon(
            //   style: TextButton.styleFrom(
            //     textStyle: TextStyle(color: Colors.blue),
            //     backgroundColor: Colors.white,
            //     shape:RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(24.0),
            //     ),
            //   ),
            //   onPressed: () => {},
            //   icon: Icon(Icons.send_rounded,),
            //   label: Text('Contact me',),
            // ),

            // TextButton.icon(
            //   style: TextButton.styleFrom(
            //     textStyle: TextStyle(color: Colors.blue),
            //     backgroundColor: Colors.white,
            //     shape:RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(24.0),
            //     ),
            //   ),
            //   onPressed: () => {},
            //   icon: Icon(Icons.send_rounded,),
            //   label: Text('Contact me',),
            // ),

            // Container(
            //   margin: EdgeInsets.only(top: 10),
            //   child:Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text("OR",
            //       style: TextStyle(
            //         fontSize:20,
            //         fontWeight: FontWeight.bold
            //       ),),
            //       Text("Signup with your favorite apps"),

            //     Padding(
            //       padding: const EdgeInsets.only(top: 20),
            //       child: Column(

            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            //         children: [
            //           Icon(FontAwesomeIcons.facebook),
            //           Icon(FontAwesomeIcons.google),
            //           Icon(FontAwesomeIcons.apple),

            //         ],

            //       ),
            //     ),

            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
