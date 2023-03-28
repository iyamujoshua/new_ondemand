import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utilities/Customebutton.dart';
import '../../utilities/Textformfield.dart';
import '../../utilities/otpdialog.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isPasswordVisible = true;
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Create a new password",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "New password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              TextFormField1(
                hintText: '',
                prefixIcon: SvgPicture.asset(
                  "asset/lockicon.svg",
                  width: 5,
                  height: 5,
                ),
                label: 'Emter password',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_off,
                          color: Color(0xFF292D32))
                      : const Icon(Icons.visibility, color: Color(0xFF292D32)),
                  onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                ),
                obscureText: isPasswordVisible,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Confirm new password",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              TextFormField1(
                hintText: '',
                prefixIcon: SvgPicture.asset(
                  "asset/lockicon.svg",
                  width: 5,
                  height: 5,
                ),
                label: 'Confirm password',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_off,
                          color: Color(0xFF292D32))
                      : const Icon(Icons.visibility, color: Color(0xFF292D32)),
                  onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                ),
                obscureText: isPasswordVisible,
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomeRaisedButton(
                    size: 17,
                    title: 'Create new password',
                    onPress: () {
                      OtpVerifiedDialog(context);
                      // Navigator.pushNamed(context, '/ChangePassword');
                    }),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
