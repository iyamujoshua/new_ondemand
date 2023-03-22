import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/screens/homepage/homescreen.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image(image: AssetImage("asset/lol.png"))),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Moses Sam",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
                      
            ),

             Center(
              child: Text("ezekiel_james@email.com",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: 10)),
                      
            ),
            SizedBox(
              height: 10,
            ),
            // Center(
            //   child: Container(
            //     width: 120,
            //     height: 35,
            //     child: CustomRaisedButton(
            //       title: 'Edit Profile',
            //       size: 16,
            //       // isLoading: _isLoading,
            //       buttonColor: Color(0xff2F70ED),
            //       titleColor: Colors.white,
            //       onPress: () {
            //         // Navigator.pushNamed(context, '/Login');
            //       },
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "assets/icons/arrow-left.svg",
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Notifications');
              },
            ),
            ListTile(
              title: Text(
                "Downloads",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/Combined-Shape.svg",
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Download');
              },
            ),
            ListTile(
              title: Text(
                "App Settings",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/",
              ),
              onTap: () {
                Navigator.pushNamed(context, '/AppSetting');
                // '/AppSetting'
              },
            ),
            ListTile(
              title: Text(
                "Account",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "assets/",
              ),
            ),
            ListTile(
              title: Text(
                "Help",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "assets/",
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Login');
              },
              child: Center(
                child: Text(
                  "Log out",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}