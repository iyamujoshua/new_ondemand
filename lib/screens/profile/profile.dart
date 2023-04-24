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
            Center(
              child: Text("Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20)),
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Image(image: AssetImage("asset/Frame 44.png"))),
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
              child: Text("ezekieljames@email.com",
                  style: TextStyle(
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s1.png'),
                onPressed: () {},
              ),
              title: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/svarrow.svg",
              ),
              onTap: () {
                // Navigator.pushNamed(context, '/Notifications');
              },
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s2.png'),
                onPressed: () {},
              ),
              title: Text(
                "Manage Address",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/svarrow.svg",
              ),
              onTap: () {
                // Navigator.pushNamed(context, '/Download');
              },
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s3.png'),
                onPressed: () {},
              ),
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/svarrow.svg",
              ),
              onTap: () {
                // Navigator.pushNamed(context, '/AppSetting');
                // '/AppSetting'
              },
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s4.png'),
                onPressed: () {},
              ),
              title: Text(
                "Password and security",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/svarrow.svg",
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s5.png'),
                onPressed: () {},
              ),
              title: Text(
                "Help Center",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: SvgPicture.asset(
                "asset/svarrow.svg",
              ),
            ),

            ListTile(
              leading: IconButton(
                icon: Image.asset('asset/s6.png'),
                onPressed: () {},
              ),
              title: Text(
                "Log out",
                style: TextStyle(fontSize: 16, color: Colors.red),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/Login');
              },
              // trailing: SvgPicture.asset(
              //   "asset/svarrow.svg",
              // ),
            ),
            // Expanded(child: Container()),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, '/Login');
            //   },
            //   child: Center(
            //     child: Text(
            //       "Log out",
            //       style: TextStyle(
            //           decoration: TextDecoration.underline,
            //           fontSize: 17,
            //           fontWeight: FontWeight.w500,
            //           color: Colors.black),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
