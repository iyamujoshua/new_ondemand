import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ondemand/main.dart';

class hmc extends StatefulWidget {
  const hmc({super.key});

  @override
  State<hmc> createState() => _hmcState();
}

class _hmcState extends State<hmc> {
  String _selectedItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/homeclean.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        "asset/arrrow.svg",
                      ),
                    ),
                  ),
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Home & Office Cleaning",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "200 jobs completed",
                    style: TextStyle(
                        color: Colors.black26,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Card(
                    elevation: 0,
                    color: Color(0xffF4F4F4),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About this service",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Service vailable for home or office",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              // Service vailable for home or office
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "All hyginic proceedures followed",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              // Service vailable for home or office
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Top-notch service",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              // Service vailable for home or office
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                      padding: EdgeInsets.only(left: 160),
                      child: DropdownButton<String>(
                        value: _selectedItem,
                        items: [
                          DropdownMenuItem(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          DropdownMenuItem(
                            value: 'Office',
                            child: Text('Office'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedItem = value!;
                          });
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
