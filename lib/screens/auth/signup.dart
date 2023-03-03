import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/splashscreen.dart';
import '../../utilities/Customebutton.dart';
import '../../utilities/Textformfield.dart';
import 'get_started.dart';
import 'package:ondemand/screens/homescreen.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool _isChecked = false;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Create an account",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
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
              SizedBox(
                height: 20,
              ),
              Text(
                "Full name",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              TextFormField1(
                hintText: 'e.g  John Doe',
                prefixIcon: SvgPicture.asset(
                  "asset/formicons.svg",
                  width: 5,
                  height: 5,
                ),
                label: 'e.g  John Doe',
                suffixIcon: null,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email address",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              TextFormField1(
                hintText: '',
                prefixIcon: SvgPicture.asset(
                  "asset/emailicon.svg",
                  width: 5,
                  height: 5,
                ),
                label: 'example@email.com',
                suffixIcon: null,
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
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
                "Confirm password",
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
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                    activeColor: Color(0XFF5F15CA),
                  ),
                  Text(
                    'I accept the Terms of service and Privacy Policy',
                    style: TextStyle(fontSize: 13.0),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 21),
                    child: Text(
                      "Already have an account? ",
                    ),
                  ),
                  InkWell(
                      onTap: (() {
                        print("you tapped me");
                      }),
                      child: Text(
                        "Sign up,",
                        style: TextStyle(color: Color(0XFF5F15CA)),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomeRaisedButton(
                  size: 17,
                  title: 'Continue',
                  onPress: () {
                    // Navigator.pushNamed(context, '/Homescreen');
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
        return homescreen();
       },),);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
