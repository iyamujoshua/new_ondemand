import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../utilities/Customebutton.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Forgot password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your phone number\nto get an OTP code to verify it’s you.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: SvgPicture.asset(
                    "asset/arrrow.svg",
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 1.5, color: Color(0XFF5F15CA)),
                  ),
                  contentPadding: EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent)),
                  hintStyle: TextStyle(fontSize: 17),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 1.5, color: Color(0XFF5F15CA)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  fillColor: Color(0xFFFF4F4F4),
                  filled: true,
                ),
                initialCountryCode: 'NG',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomeRaisedButton(
                    size: 17,
                    title: 'Send verification code',
                    onPress: () {
                      // Navigator.pushNamed(context, '/DashBoard');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
