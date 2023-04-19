import 'package:flutter/material.dart';

import '../card_slide.dart';

class HompageDeatail extends StatefulWidget {
  const HompageDeatail({Key? key}) : super(key: key);

  @override
  State<HompageDeatail> createState() => _HompageDeatailState();
}

class _HompageDeatailState extends State<HompageDeatail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 370,

            decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(12),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Search for a service",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Container(
          //   width: 370,
          //   decoration: BoxDecoration(
          //     color: Color(0xffF4F4F4),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          //   padding: EdgeInsets.all(12),
          //   child: GestureDetector(
          //     onTap: () {
          //       print("Search bar");
          //     },
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.search,
          //           color: Colors.grey,
          //         ),
          //         Text(
          //           "Search for a service",
          //           style: TextStyle(color: Colors.grey),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          CardCarousel(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Popular services",
                ),
              ),
              InkWell(
                  onTap: (() {
                    Navigator.pushNamed(context, "/view");
                    // print("you tapped me");
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "view all",
                      style: TextStyle(color: Colors.purple),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // print("hello");
                      Navigator.pushNamed(context, '/hmc');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/head.png")),
                        Text('Home/Office\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("why");
                      Navigator.pushNamed(context, '/EditableDateTime');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/blue.png")),
                        Text('Dry\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("okay na");
                      // Navigator.pushNamed(context, 'electricalService');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/pics.png")),
                        Text('Electrical\nService'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("hello");
                      // Navigator.pushNamed(context, 'homeOfficeCleaning');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/head.png")),
                        Text('Home/Office\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("why");
                      // Navigator.pushNamed(context, 'dryCleaning');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/blue.png")),
                        Text('Dry\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("okay na");
                      // Navigator.pushNamed(context, 'electricalService');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/pics.png")),
                        Text('Electrical\nService'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("hello");
                      // Navigator.pushNamed(context, 'homeOfficeCleaning');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/head.png")),
                        Text('Home/Office\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("why");
                      // Navigator.pushNamed(context, 'dryCleaning');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/blue.png")),
                        Text('Dry\nCleaning'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                       print("okay na");
                      // Navigator.pushNamed(context, 'electricalService');
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("asset/pics.png")),
                        Text('Electrical\nService'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Viewall');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color.fromARGB(255, 233, 231, 231)),
              child: Text(
                "View more",
              ),
            ),
          )
        ],
      ),
    );
  }
}
