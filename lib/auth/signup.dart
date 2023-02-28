import 'package:flutter/material.dart';
import 'package:ondemand/splashscreen.dart';
import 'get_started.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
    bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 170),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,

                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                    ),
                    SizedBox(height: 20,),

                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Create an accont to start hiring new services",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,

                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 233, 232, 232),
                boxShadow: [
                  BoxShadow(
                      // offset: Offset(0, 2),
                      // blurRadius: 2,
                      )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff9D59FF),
                decoration: InputDecoration(
                  hintText: "John Doe",
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Image(image: AssetImage("asset/Vector.png"))),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 14,),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 233, 232, 232),
                boxShadow: [
                  BoxShadow(
                      // offset: Offset(0, 2),
                      // blurRadius: 2,
                      )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff9D59FF),
                decoration: InputDecoration(
                  hintText: "example@gmail.com",
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Image(image: AssetImage("asset/mailing.png"))),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 14,),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 233, 232, 232),
                boxShadow: [
                  BoxShadow(
                      // offset: Offset(0, 2),
                      // blurRadius: 2,
                      )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xff9D59FF),
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Image(image: AssetImage("asset/lock.png"))),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 14,),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 233, 232, 232),
                boxShadow: [
                  BoxShadow(
                      // offset: Offset(0, 2),
                      // blurRadius: 2,
                      )
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xff9D59FF),
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  prefixIcon: Padding(
                      padding: EdgeInsets.all(1),
                      child: Image(image: AssetImage("asset/lock.png"))),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),


            Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   'Please read and accept the terms and conditions:',
            //   style: TextStyle(fontSize: 18.0),
            // ),
            SizedBox(height: 8.0),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                        activeColor: Colors.purple, // Change the color here

                ),
                Text(
                  'I accept the terms and conditions',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),

      SizedBox(height: 14,),
      Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: Text("Already have an account? ",),
                    ),
                    InkWell(
                      onTap: (() {
                        print("you tapped me");
                      }),
                      child: Text("Sign up,", style: TextStyle(color: Colors.purple),)),
                  ],
                ),
























            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Container(
            //     child: Text.rich(
            //       TextSpan(
            //           text: "By creating this account, you agree \n to our ",
            //           style: TextStyle(
            //             fontFamily: "Poppins",
            //           ),
            //           children: [
            //             TextSpan(
            //               text: "Terms and Condition",
            //               style: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 fontFamily: "Poppins",
            //                 color: Color(0xff89CA00),
            //               ),
            //             ),
            //           ]),
            //     ),
            //   ),
            // ),
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
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff9D59FF),
                      Color(0xff560BC2),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ),
            // 
          ],
        ),
      ),
    );
  }
}

