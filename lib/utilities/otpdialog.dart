import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// import 'package:sway/_.dart';

Future<dynamic> OtpVerifiedDialog(BuildContext context) {
  return showDialog(
      useRootNavigator: false,
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(""),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "asset/x.svg",
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage("asset/Group 21.png")),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password changed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ));
}
